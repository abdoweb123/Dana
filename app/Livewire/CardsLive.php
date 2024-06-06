<?php

namespace App\Livewire;

use App\Models\Card;
use App\Models\Group;
use Livewire\Component;
use App\Models\Category;
use App\Functions\Upload;
use Livewire\WithFileUploads;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\WithPagination;

class CardsLive extends Component
{
    use WithFileUploads, LivewireAlert, WithPagination;

    public $category;
    public $groups;

    public $groups_ids;
    public $image;
    public $old_image;

    public $card_id;
    public $title_ar;
    public $title_en;
    public $price;
    public $discount;

    public $show_card;

    // Filter
    public $parents_categories_to_filter;
    public $parent_category_to_filter_id;
    public $subs_categories_to_filter = [];
    public $sub_category_to_filter_id;
    public $sub_category_id;
    public $group_id;

    public $search;

    public function reseter()
    {
        $this->resetExcept('category', 'groups', 'search', 'parents_categories_to_filter', 'parent_category_to_filter_id', 'subs_categories_to_filter', 'sub_category_to_filter_id', 'sub_category_id', 'group_id');
    }

    public function store()
    {
        $this->validate([
            'title_ar' => 'required|min:3|max:255',
            'title_en' => 'required|min:3|max:255',
            'price' => 'required|numeric|min:1',
            'image' => 'required',
            'discount' => 'required|numeric|lte:price',
            'groups_ids' => 'required'
        ], [
            'groups_ids.required' => 'Require at least one select'
        ]);

        $card = new Card();
        $card->category_id = $this->sub_category_id;
        $card->title_ar = $this->title_ar;
        $card->title_en = $this->title_en;
        $card->price = $this->price;
        $card->discount = $this->discount;
        $card->image = Upload::UploadFile($this->image, 'cards');
        $card->save();

        if($this->groups_ids){
            $card->groups()->attach($this->groups_ids);
        }

        $this->reseter();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_add'));
    }
    public function openEditModal($card_id)
    {
        $card = Card::findOrFail($card_id);
        if($card){
            $this->title_ar = $card->title_ar;
            $this->title_en = $card->title_en;
            $this->card_id = $card->id;
            $this->price = $card->price;
            $this->discount = $card->discount;
            $this->old_image = $card->image;
            $this->groups_ids = $card->groups->pluck('id');
        }
    }

    public function update()
    {
        $this->validate([
            'title_ar' => 'required|min:3|max:255',
            'title_en' => 'required|min:3|max:255',
            'price' => 'required|numeric|min:1',
            'discount' => 'required|numeric|lte:price',
            'groups_ids' => 'required'
        ], [
            'groups_ids.required' => 'Require at least one select'
        ]);

        $card = Card::find($this->card_id);
        if(!$card){
            $this->alert('error', 'Id not found!');
            return back();
        }
        $card->category_id = $this->category->id;
        $card->title_ar = $this->title_ar;
        $card->title_en = $this->title_en;
        $card->price = $this->price;
        $card->discount = $this->discount;

        if($this->image){
            Upload::deleteImage($card->image);
            $card->image = Upload::UploadFile($this->image, 'cards');
        }
        $card->save();
        if($this->groups_ids){
            $card->groups()->detach();
            $card->groups()->attach($this->groups_ids);
        }

        $this->reseter();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_update'));
    }

    public function openDeleteModal($card_id)
    {
        $this->card_id = $card_id;
    }

    public function delete()
    {
        $card = Card::find($this->card_id);
        $card->delete();

        $this->reseter();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_delete'));
    }

    public function openShowModal($card_id)
    {
        $this->show_card = Card::with('groups')->find($card_id);
    }

    public function getSubsToFilter($parent_id)
    {
        $this->parent_category_to_filter_id = $parent_id;
        $this->subs_categories_to_filter = Category::where('parent_id', $parent_id)->get();
    }

    public function updated($parent_category_to_filter_id)
    {
        $this->subs_categories_to_filter = Category::where('parent_id', $this->parent_category_to_filter_id)->get();
    }
    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function defineCategoryToFilter($sub_id)
    {
        $this->sub_category_id = $sub_id;
        $this->resetPage();
    }

    public function defineGroupToFilter($group_id)
    {
        $this->group_id = $group_id;
        $this->resetPage();
    }

    public function clearGroupId()
    {
        $this->group_id = null;
        $this->resetPage();
    }

    public function mount($category_id)
    {
        if(!auth('admin')->user()->hasPermissionTo('show cards')){
            abort(401);
        }

        $this->category = Category::find($category_id);
        $this->groups = Group::get();
        $this->parents_categories_to_filter = Category::where('parent_id', null)->get();
        if($category_id){
            $this->sub_category_id = $category_id;
            $sub = Category::find($category_id);
            $this->parent_category_to_filter_id = $sub->parent_id;
            $this->getSubsToFilter($sub->parent_id);
            $this->category = $sub; //for title;
        }
    }

    public function render()
    {
        $cards = Card::where(function($q){
            $q->search(['title_ar', 'title_en'], $this->search);

        })->where('category_id', $this->sub_category_id)
        ->where(function($q){
            if($this->group_id){
                $q->whereRelation('groups', 'group_id', $this->group_id);
            }
        })
        ->withCount('serials')
        ->withCount('availableSerials')
        ->latest()->paginate(30);

        return view('livewire.cards-live', compact('cards'))
        ->extends('admin.layout')
        ->section('content');
    }

}
