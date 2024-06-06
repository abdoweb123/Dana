<?php

namespace App\Http\Controllers;

use App\Models\Card;
use App\Models\Cart;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CartFrontController extends Controller
{

    public function add_to_cart(Request $request)
    {
        $card = Card::where('id', $request->card_id)->withCount('availableSerials')->first();
        if ($card->available_serials_count < 1) {
            return response()->json([
                'success' => false,
                'msg' => __('dash.card_not_available')]
            );
        }
    
        $cart = Cart::where('card_id', $request->card_id)->where('user_id', auth('sanctum')->id())->first();
        if (!$cart) {
            $cart = new Cart();
        }
    
        if (($cart->quantity + 1) > $card->available_serials_count) {
            return response()->json([
                'success' => false,
                'msg' => __('dash.quantity_not_available')]
            );
        }
    
        $cart->user_id = auth('sanctum')->id();
        $cart->card_id = $request->card_id;
        $cart->quantity += $request->quantity ?? 1;
        $cart->save();
    
        return response()->json([
            'success' => true,
            'msg' => __('dash.item_added')]
        );
    }

}
