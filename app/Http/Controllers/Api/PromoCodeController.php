<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\CartItemsResource;
use App\Models\Cart;
use App\Models\PromoCodeUser;
use Illuminate\Http\Request;
use App\Functions\ResponseHelper;
use App\Http\Controllers\Controller;

class PromoCodeController extends Controller
{
    public function deleteCoupon(Request $request)
    {
        $coupon = PromoCodeUser::where('id',$request->id)->first();

        if (!$coupon) {
            return ResponseHelper::make(null, __('dash.coupon_not_found'), false, 400);
        }

        $coupon->delete();

        $data = self::paymentData();

        return ResponseHelper::make($data, __('dash.deleted_successfully'));
    }


    // get all promoCodes (processed)
    public function getPaymentData()
    {
        $data = self::paymentData();

        return ResponseHelper::make($data, __('dash.data_fetched_successfully'));
    }


    // get promoCodes to be used in orderController
    public static function getPromoCodes()
    {
        return $promoCodes = auth('sanctum')->user()->promoCodes()->select('promo_code_user.id', 'code', 'discount')->get()->map(function ($promoCode) {
            $promoCode->discount = costformat($promoCode->discount);
            return $promoCode->setHidden(['pivot']);
        });
    }


    // payment Data
    public static function paymentData()
    {
        $cart_items = Cart::where('user_id', auth('sanctum')->id())
            ->with('card', function($q){
                $q->withCount('availableSerials');
            })->get();

        $user = auth('sanctum')->user();
        $total_promo_code_discount = $user->promoCodes()->sum('discount');

        $promoCodes = PromoCodeController::getPromoCodes();

        $subtotal_before_discount = CartController::getSubtotalCart($cart_items);

        $sub_total = $subtotal_before_discount - $total_promo_code_discount;

        // if sub_total < 0 put sub_total=0;
        $sub_total = $sub_total < 0 ? 0 : $sub_total;

        $tax = $sub_total * (setting('tax')/ 100);

        $data = [
            'promoCodes'=> $promoCodes,
            'cart_items' => CartItemsResource::collection($cart_items),
            'subtotal_before_discount' => costformat($subtotal_before_discount),
            'total_discount' => costformat($total_promo_code_discount),
            'sub_total' => costformat($sub_total),
            'tax' => costformat($tax),
            'net_total' => costformat($sub_total + $tax),
        ];

        return $data;
    }



} // end of class
