<?php

namespace App\Livewire;

use App\Models\Category;
use Livewire\Component;
use App\Models\PromoCode;
use Livewire\WithPagination;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class PromoCodeLive extends Component
{
    use LivewireAlert, WithPagination;

    public $promo_id;
    public $code;
    public $search;
    public $discount;
    public $from;
    public $to;
    public $category_id = [];

    public function store()
    {
        $this->validate([
            'code' => 'required|min:3|max:10|unique:promo_codes,code',
            'discount' => 'required|numeric',
            'from' => 'required',
            'to' => 'required',
            'category_id' => 'required|array',
            'category_id.*' => 'exists:categories,id',
        ]);


        $promo = new PromoCode();
        $promo->code = $this->code;
        $promo->discount = $this->discount;
        $promo->from = $this->from;
        $promo->to = $this->to;
        $promo->save();

        $promo->categories()->sync($this->category_id);

        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_add'));
    }

    public function openEditModal($promo)
    {
        $promo = PromoCode::findOrFail($promo);
        if($promo){
            $this->code = $promo->code;
            $this->discount = $promo->discount;
            $this->from = $promo->from;
            $this->to = $promo->to;
            $this->promo_id = $promo->id;
            $this->category_id = $promo->categories->pluck('id')->toArray();
        }
    }

    public function update()
    {
        $this->validate([
            'code' => 'required|min:3|max:10|unique:promo_codes,code,'.$this->promo_id,
            'discount' => 'required|numeric',
            'from' => 'required',
            'to' => 'required',
            'category_id' => 'required|array',
            'category_id.*' => 'exists:categories,id',
        ]);

        $promo = PromoCode::find($this->promo_id);
        if(!$promo){
            $this->alert('error', 'Id not found!');
            return back();
        }

        $promo->code = $this->code;
        $promo->discount = $this->discount;
        $promo->from = $this->from;
        $promo->to = $this->to;
        $promo->save();

        $promo->categories()->sync($this->category_id);

        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_update'));
    }

    public function openDeleteModal($promo)
    {
        $this->promo_id = $promo;
    }

    public function delete()
    {
        $promo = PromoCode::find($this->promo_id);
        $promo->delete();

        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_delete'));
    }

    public function mount()
    {
        if(!auth('admin')->user()->hasPermissionTo('show promo codes')){
            abort(401);
        }
    }


    public function render()
    {
        $promos = PromoCode::search(['code'], $this->search)
        ->withCount('users')
        ->paginate(30);

        $categories = Category::all();

        return view('livewire.promo-code-live', compact('promos','categories'))
        ->extends('admin.layout')
        ->section('content');
    }
}
