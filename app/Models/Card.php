<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    use HasFactory;

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function groups()
    {
        return $this->belongsToMany(Group::class);
    }

    public function serials()
    {
        return $this->hasMany(Serial::class);
    }

    public function availableSerials()
    {
        return $this->serials()->where('user_id', null);
    }
}
