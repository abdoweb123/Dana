<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CardResource extends JsonResource
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
            'availableSerials' => $this->availableSerials()->count(),
            'image' => asset($this->image),
            'title' => $this['title_'.lang()],
            'price_before_discount' => costformat($this['price']),
            'discount' => $this['discount'] > 0 ? costformat($this['discount']) : "",
            'price_after_discount' => costformat($this['price'] - $this['discount']),
            'category_title' => $this->category['title_'.lang()]
        ];
    }
}
