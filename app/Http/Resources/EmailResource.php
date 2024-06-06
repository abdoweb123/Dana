<?php

namespace App\Http\Resources;

use App\Models\CompanyEmail;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EmailResource extends JsonResource
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
            'emails' => CompanyEmail::where('email_type_id', $this->id)->select('email')->get(),
        ];
    }
}
