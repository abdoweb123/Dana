<?php

namespace App\View\Components;

use App\Models\Category;
use Closure;
use App\Models\Group;
use Illuminate\View\Component;
use Illuminate\Contracts\View\View;

class NavComponent extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     */

//    public function render(): View|Closure|string
//    {
//        $groups = Group::whereHas('cards')->select('id', 'title_en', 'title_ar')->get();
//
//        $categories = Category::whereHas('cards')->get();
//
//        return view('components.nav-component', compact('groups', 'categories'));
//    }

    public function render(): View|Closure|string
    {
        $groups = Group::whereHas('cards' , function($q){
            $q->whereHas('availableSerials');
        })->select('id', 'title_en', 'title_ar')->get();

        $categories = Category::whereHas('subs', function($q){
            $q->whereHas('cards', function($q){
                $q->whereHas('availableSerials');
            });
        })->get();
        return view('components.nav-component', compact('groups', 'categories'));
    }
}
