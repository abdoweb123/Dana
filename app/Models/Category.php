<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [ 'title_ar', 'title_en'];


    /*** Start relations ***/

    public function subs()
    {
        return $this->hasMany(Category::class, 'parent_id');
    }

    public function parent()
    {
        return $this->belongsTo(Category::class);
    }

    public function cards()
    {
        return $this->hasMany(Card::class);
    }

    public function promoCodes() {
        return $this->belongsToMany(PromoCode::class);
    }

} //end of class
