<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Group;
use Illuminate\Http\Request;

class FrontController extends Controller
{

    public function home()
    {
        $groups = Group::whereHas('cards' , function($q){
            $q->whereHas('availableSerials')
            ->take(4);
        })->get();

        $categories = Category::whereHas('cards')->get();

        return view('userarea.home', compact('groups','categories'));
    }

    public function group($group_id)
    {
        $group = Group::with(['cards' => function ($q) {
            $q->whereHas('availableSerials');
        }])->findOrFail($group_id);

        return view('userarea.group', compact('group'));
    }

    public function category($category_id, $category_name=null)
    {
        $category = Category::where('id', $category_id)->where('parent_id', null)->first();
        if(!$category){
            abort(404);
        }

        return view('userarea.category', compact('category'));
    }

    public function cards($category_id, $category_name=null)
    {
        $category = Category::with('parent', 'cards')->findOrFail($category_id);

        return view('userarea.cards', compact('category'));
    }
}
