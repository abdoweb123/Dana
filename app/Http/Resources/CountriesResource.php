<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CountriesResource extends JsonResource
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
            'country_code' => $this->phone_code,
            'image' => asset($this->image),
            'phone_length' => $this->length,
            'title' => $this['title_'.lang()],
            'currancy_code' => $this->currancy_code,
        ];
    }
}
