<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasFactory;

    protected $fillable = [ 'title_ar', 'title_en'];

    public function cards()
    {
        return $this->belongsToMany(Card::class);
    }
}
