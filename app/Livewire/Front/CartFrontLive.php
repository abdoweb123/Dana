<?php

namespace App\Livewire\Front;

use App\Models\Card;
use App\Models\Cart;
use Livewire\Component;

class CartFrontLive extends Component
{

    public function plus($cart_id)
    {
        $cart = Cart::where('id', $cart_id)
        ->where('user_id', auth()->id())
        ->first();

        $card = Card::where('id', $cart->card_id)->withCount('availableSerials')->first();

        if($cart->quantity + 1 > $card->available_serials_count){
            session()->flash('error', __('dash.quantity_not_available'));
            return back();
        }
        $cart->quantity ++;
        $cart->save();

        session()->flash('success', __('dash.alert_update'));
    }

    public function minus($cart_id)
    {
        $cart = Cart::where('id', $cart_id)
        ->where('user_id', auth()->id())
        ->first();
        if($cart->quantity == 1){
            $cart->delete();
        }else{
            $cart->quantity --;
            $cart->save();    
        }

        session()->flash('success', __('dash.alert_update'));
    }

    public function remove($cart_id)
    {
        $cart = Cart::where('id', $cart_id)
        ->where('user_id', auth()->id())
        ->first();
        if($cart){
            $cart->delete();
            session()->flash('success', __('dash.alert_update'));
        }
    }

    public function render()
    {
        $cart_items = Cart::where('user_id', auth('sanctum')->id())
            ->with('card', function ($q) {
                $q->withCount('availableSerials');
            })
            ->get();

        $sub_total = 0;
        foreach ($cart_items as $cart_item) {
            $card = Card::find($cart_item['card_id']);
            $sub_total += (($card->price - $card->discount) * $cart_item['quantity']);
        }
        $tax = $sub_total * (setting('tax') / 100);

        $data = [
            'sub_total' => costformat($sub_total),
            'tax' => costformat($tax),
            'net_total' => costformat($sub_total + $tax),
        ];

        return view('livewire.front.cart-front-live', compact('data', 'cart_items'))
            ->extends('userarea.layout')
            ->section('content');
    }
}
