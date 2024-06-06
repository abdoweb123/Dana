<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use App\Http\Resources\CardResource;
use Illuminate\Http\Resources\Json\JsonResource;

class GroupsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'group_id' => $this->id,
            'group_title' => $this['title_'.lang()],
            'cards' => CardResource::collection($this->cards()->take(4)->get()),
        ];
    }
}
