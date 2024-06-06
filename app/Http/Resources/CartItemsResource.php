<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CartItemsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'card_id' => $this->card_id,
            'title' => $this->card['title_'.lang()],
            'category_title' => $this->card->category['title_'.lang()],
            'image' => asset($this->card->image),
            'requested_quantity' => $this->quantity,
            'available_quantity' => $this->card->available_serials_count,
            'price_before_discount' => costformat($this->card->price),
            'discount' => $this->card->discount > 0 ? costformat($this->card->discount) : "",
            'price_after_discount' => costformat($this->card->price - $this->card->discount),
        ];
    }
}
