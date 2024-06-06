<?php

namespace App\Http\Controllers\Api;

use App\Mail\SendSerial;
use App\Models\Card;
use App\Models\Cart;
use App\Models\Order;
use App\Models\PromoCodeUser;
use App\Models\Serial;
use App\Models\Country;
use App\Models\PromoCode;
use App\Functions\WhatsApp;
use App\Models\OrderDetail;
use App\Models\PaymentMethod;
use App\Functions\Notification;
use App\Functions\ResponseHelper;
use App\Http\Requests\OrderRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\PaymentResource;
use App\Http\Requests\UseCouponeRequest;
use App\Http\Requests\OrderRequestRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use mysql_xdevapi\Exception;

class OrderController extends Controller
{
    public function payment_methods()
    {
        $methods = PaymentMethod::where('display', true)->get();

        $data = [
            'methods' => PaymentResource::collection($methods),
        ];

        return ResponseHelper::make($data);
    }

    public function use_coupon(UseCouponeRequest $request)
    {
        $cart_items = Cart::where('user_id', auth('sanctum')->id())
            ->with('card', function($q){
                $q->withCount('availableSerials');
            })->get();

        $total_promo_code_discount = $this->checkPromoCode($cart_items, $request->promo_code);

        $data = PromoCodeController::paymentData();

        if(lang('en')){
            $msg = "The coupon discount value is ". amount_format($total_promo_code_discount)."BD";
        }else{
            $msg = "قيمة كوبون الخصم ". amount_format($total_promo_code_discount)."BD";
        }

        return ResponseHelper::make($data, $msg);
    }


    /*** Store Post ***/
    public function store(OrderRequest $request)
    {
        $data = PromoCodeController::paymentData();

        $this->checkCartQuantity($data);

        DB::beginTransaction(); // Start the transaction

        try {
            $order = new Order();
            $user = auth('sanctum')->user();
            $order->user_id = $user->id;
            $order->name = $user->name;
            $order->phone = $user->phone;
            $order->payment_method_id = $request->payment_method_id;
            $order->save();

            $order->sub_total = $this->extractNumericValue($data['sub_total']);
            $order->promo_code_discount = $this->extractNumericValue($data['total_discount']); // Extract numeric value
            $order->vat_cost = $this->extractNumericValue($data['tax']); // Extract numeric value
            $order->net_total = $this->extractNumericValue($data['net_total']); // Extract numeric value
            $order->currancy_code = request()->country_id ? Country::find(request()->country_id)->currancy_code : "BHD";
            $order->save();

            $this->storeDetails($order->id,$data['cart_items']);

            Notification::send('طلب جديد', 'New Order',
                $order->name,
                "هناك طلب جديد بقيمة " . costformat($order->net_total),
                "There is a new request with a value of " . costformat($order->net_total),
                route('dashboard.orders')
            );

            $source = PaymentMethod::find($request->payment_method_id)->tap_src;

            if ($source == null) { // if cash
                $order->is_paid = false;
                $order->save();

                // send serials
                foreach ($order->order_details as $i => $detail) {
                    $serials = Serial::where('card_id', $detail['card_id'])->where('user_id', null)->take($detail['quantity'])->get();

                    $serialCodes = [];
                    foreach ($serials as $serial) {
                        $serialCodes[] = $serial->key;
                        if (setting('order_auto') == 'true') {
//                            WhatsApp::SendSerial($user->phone, $serial->key, $serial->card['title_' . lang()], lang());
                            Mail::to($user->email)->send(new SendSerial($serial->key,$serial->card['title_'.lang()],lang()));
                        }
                        $serial->user_id = $user->id;
                        $serial->save();
                    }
                    $detail->serials = $serialCodes;
                    if ($i == 0) {
                        $order->is_sent = setting('order_auto') == 'false' ? false : true;
                        $order->save();
                    }
                    $detail->save();
                }

                Cart::where('user_id', $user->id)->delete();

                // convert promoCodes from user to order
                PromoCodeUser::query()->where('user_id', $user->id)
                    ->update([
                        'user_id'=>null,
                        'order_id'=>$order->id,
                    ]);

                if (setting('order_auto') == 'true') {
                    DB::commit(); // Commit transaction if order auto
                    return ResponseHelper::make(null, __('dash.ordered_successfully'));
                } else {
                    DB::commit(); // Commit transaction if order needs approval
                    return ResponseHelper::make(null, __('dash.ordered_successfully_need_approve'));
                }
            } else {
                $order->source = $source;
                $order->save();
            }

            // Verify the payment transaction
            $tap = new TapController();
            $result = $tap->VerifyTapTransaction($order->id, $source);

            if ($result['success'] == false) {
                DB::rollBack(); // Rollback the transaction on payment verification failure
                $data = ['error_msg' => $result['error_msg']];
                return ResponseHelper::make($data, null, false);
            } else {
                $data = ['transaction_url' => $result['transaction_url']];
                return ResponseHelper::make($data);
            }
        } catch (Exception $exception) {
            DB::rollBack(); // Rollback the transaction on any exception
            return ResponseHelper::make(null, $exception->getMessage(), false, 500);
        }
    }


    protected static function storeDetails($order_id,$cart_items)
    {
        foreach ($cart_items as $cart_item) {
            $card = Card::find($cart_item['card_id']);

            $detail = new OrderDetail();
            $detail->order_id = $order_id;
            $detail->card_id = $cart_item['card_id'];
            $detail->card_title_ar = $card->title_ar;
            $detail->card_title_en = $card->title_en;
            $detail->price = $card->price;
            $detail->discount = $card->discount; //not percent
            $detail->quantity = $cart_item['quantity'];
            $detail->save();
        }

        return $order_id;

    }

    protected function checkPromoCode($cart_items, $promo_code)
    {
        $promo = PromoCode::where('code', $promo_code)
            ->whereDate('from', '<=', now())
            ->whereDate('to', '>=', now())
            ->first();

        $data = PromoCodeController::paymentData();

        if (!$promo) {
            $data['promo_code'] =[ __('dash.coupon_invalid_date')];
            return ResponseHelper::make($data, 'Validation errors', false, 200);
        }

        $user = auth('sanctum')->user();

        if ($promo->categories->isNotEmpty()) {
            // Logic to check if any card in the cart belongs to the associated categories
             $cartCards = $cart_items->map(function($item) {
                return $item->card;
            });
            $cartContainsCategoryProducts = $this->cartContainsCategoryCards($cartCards, $promo->categories);

            if (!$cartContainsCategoryProducts) {
                $data['promo_code'] =[ __('dash.promo_not_applicable')];
                return ResponseHelper::make($data, 'Validation errors', false, 200);
            }
        }

        $sub_total = CartController::getSubtotalCart($cart_items);

        $user->promoCodes()->syncWithoutDetaching($promo->id);

        return $totalPromo = $user->promoCodes()->sum('discount');
    }

    public static function checkCartQuantity($data)
    {
        if(count($data['cart_items']) < 1){
            return ResponseHelper::make(null, 'dev:can\'t find any items in user Cart!', false,200);
        }

        foreach ($data['cart_items'] as $cart_item) {
            $card = Card::where('id', $cart_item['card_id'])
                ->withCount('availableSerials')
                ->first();

            if($cart_item['quantity'] > $card->available_serials_count){
                return ResponseHelper::make($data,  __('dash.quantity_not_available'), false,200);
            }
        }
    }

    private function cartContainsCategoryCards($cartCards, $categories)
    {
        foreach ($cartCards as $card) {
            // Assuming each product has a category_id field
            if (in_array($card['category_id'], $categories->pluck('id')->toArray())) {
                return true; // Cart contains a product belonging to one of the associated categories
            }
        }

        return false; // Cart does not contain any product belonging to the associated categories
    }

    private function extractNumericValue($string)
    {
        // Extract numeric value from the string
        preg_match('/[\d.]+/', $string, $matches);
        return $matches[0];
    }

} // end of class
