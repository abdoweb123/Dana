<?php

namespace App\Http\Controllers\Api;

use App\Models\Cart;
use Illuminate\Http\Request;
use App\Functions\ResponseHelper;
use App\Http\Controllers\Controller;
use App\Http\Resources\CartItemsResource;
use App\Models\Card;
use App\Models\Setting;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{

    public function index()
    {
        $cart_items = Cart::where('user_id', auth('sanctum')->id())
            ->with('card', function($q){
                $q->withCount('availableSerials');
            })
            ->get();

        $sub_total = 0;
        foreach ($cart_items as $cart_item) {
            $card = Card::find($cart_item['card_id']);
            $sub_total += (($card->price - $card->discount) * $cart_item['quantity']);
        }
        $tax = $sub_total * (setting('tax')/ 100);

        $data = [
            'sub_total' => costformat($sub_total),
            'tax' => costformat($tax),
            'net_total' => costformat($sub_total + $tax),
            'cart_items' => CartItemsResource::collection($cart_items)
        ];
        return ResponseHelper::make($data);
    }

    public function addItem(Request $request)
    {
        $card = Card::where('id', $request->card_id)->withCount('availableSerials')->first();
        $this->checkCard($card);

        $cart = Cart::where('card_id', $request->card_id)->where('user_id', auth('sanctum')->id())->first();
        if(!$cart){
            $cart = new Cart();
        }
        $this->checkCardQuantityInCartForAdd($card, $cart, $request->quantity ?? 1);
        $cart->user_id = auth('sanctum')->id();
        $cart->card_id = $request->card_id;
        $cart->quantity += $request->quantity ?? 1;
        $cart->save();

        $quantity = Cart::where('user_id', auth('sanctum')->id())->count();
        $data = [
            'cart_quantity' => $quantity
        ];

        return ResponseHelper::make($data, __('dash.item_added'));
    }

    public function updateItem(Request $request)
    {
        $request->validate([
            'card_id' => 'required|exists:cards,id',
            'quantity' => 'required|numeric'
        ]);
        $card = Card::where('id', $request->card_id)->withCount('availableSerials')->first();
        $this->checkCard($card);

        $cart = Cart::where('card_id', $request->card_id)
            ->where('user_id', auth('sanctum')->id())
            ->first();

        if(!$cart){
            return ResponseHelper::make(NULL, 'dev:card_id is not found in this cart - you can\'t update what doesn\'t exist!!',false,200);
        }

        $this->checkCardQuantityInCartForUpdate($card, $request->quantity);

        $cart->quantity = $request->quantity;
        $cart->save();

        return $this->index();
    }

    public function removeItem(Request $request)
    {
        $cart = Cart::where('card_id', $request->card_id)
            ->where('user_id', auth('sanctum')->id())
            ->first();

        if(!$cart){
            return ResponseHelper::make(NULL, 'dev:card_id is not found in this cart - you can\'t Remove what doesn\'t exist!!',false,200);
        }
        $cart->delete();

        return $this->index();
    }

    public function get_quantity()
    {
        $quantity = Cart::where('user_id', auth('sanctum')->id())->count();
        $data = [
            'cart_quantity' => $quantity
        ];

        return ResponseHelper::make($data);
    }

    public function delete_all()
    {
        Cart::where('user_id', auth('sanctum')->id())->delete();

        return ResponseHelper::make(null, __('dash.alert_delete'));
    }

    private static function checkCard($card)
    {
        if(!$card){
            return ResponseHelper::make(NULL, 'dev:card_id is not found!',false,200);
        }
        if($card->available_serials_count < 1){
            return ResponseHelper::make(NULL, __('dash.card_not_available'),false,200);
        };
    }

    private static function checkCardQuantityInCartForAdd($card, $cart, $quantity)
    {
        if(($cart->quantity + $quantity ) > $card->available_serials_count){
            $data = [
                'available_quantity' => $card->available_serials_count
            ];
            return ResponseHelper::make($data, __('dash.quantity_not_available'),false,200);
        }
    }

    private static function checkCardQuantityInCartForUpdate($card, $needed_quantity)
    {
        if($needed_quantity > $card->available_serials_count){
            $data = [
                'available_quantity' => $card->available_serials_count
            ];
            return ResponseHelper::make($data, __('dash.quantity_not_available'),false,200);
        }
    }

    public static function getSubtotalCart($cart_items)
    {
        $sub_total = 0;
        foreach ($cart_items as $cart_item) {
            $card = Card::find($cart_item['card_id']);
            $sub_total += (($card->price - $card->discount) * $cart_item['quantity']);
        }
        return $sub_total;
    }

} //end of class
