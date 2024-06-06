<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductShowResource extends JsonResource
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
            'name' => $this['name_'.lang()],
            'price' => $this->price,
            'discount_percent' => $this->discount,
            'quantity' => $this->quantity,
            'images' => ImageResource::collection($this->images)
        ];
    }
}
