<?php

namespace App\Livewire\Sidepages;

use Livewire\Component;
use App\Models\Sidepage;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class TermsLive extends Component
{
    use LivewireAlert;

    public $value_ar, $value_en;

    public function store()
    {
        $termns = Sidepage::where('key', 'terms')->first();
        $termns->value_ar = $this->value_ar;
        $termns->value_en = $this->value_en;
        $termns->save();

        $this->alert('success', __('dash.alert_update'));
    }

    public function mount()
    {
        $page = Sidepage::where('key', 'terms')
        ->first();
        if(!$page){
            $page = new Sidepage();
            $page->key = 'terms';
            $page->save();
        }
        $this->value_ar = $page->value_ar;
        $this->value_en = $page->value_en;
    }

    public function render()
    {
        return view('livewire.sidepages.terms-live')
        ->extends('admin.layout')
        ->section('content');
    }
}
