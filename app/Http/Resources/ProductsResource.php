<?php

namespace App\Http\Resources;

use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $image = Image::where('product_id', $this->id)->select('image')->first()->image;
        return [
            'id' => $this->id,
            'product_type_id' => $this->product_type_id,
            'name' => $this['name_'.lang()],
            'price' => $this->price,
            'discount_percent' => $this->discount,
            'quantity' => $this->quantity,
            'image' => asset($image),
        ];
    }
}
