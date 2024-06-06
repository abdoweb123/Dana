<?php

namespace App\Livewire;

use App\Models\Card;
use App\Models\Serial;
use Livewire\Component;
use Livewire\WithPagination;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class SerialsLive extends Component
{
    use LivewireAlert, WithPagination;

    public $search;

    public $key;
    public $card_id;
    public $serial_id;

    public function store()
    {
        $this->validate([
            'key' => 'required|unique:serials,key',
        ]);

        $serial = new Serial();
        $serial->card_id = $this->card_id;
        $serial->key = $this->key;
        $serial->save();
        
        $this->resetExcept('card_id');
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_add'));
    }
    public function openEditModal($serial_id)
    {
        $serial = Serial::findOrFail($serial_id);
        if($serial){
            $this->key = $serial->key;
            $this->serial_id = $serial_id;
        }
    }

    public function update()
    {
        $this->validate([
            'key' => 'required|unique:serials,key,'.$this->serial_id,
        ]);

        $serial = Serial::find($this->serial_id);
        if(!$serial){
            $this->alert('error', 'Id not found!');
            return back();
        }
        $serial->key = $this->key;
        $serial->save();

        $this->resetExcept('card_id');
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_update'));
    }

    public function openDeleteModal($serial_id)
    {
        $this->serial_id = $serial_id;
    }

    public function delete()
    {
        $serial = Serial::find($this->serial_id);
        if(!$serial){
            $this->alert('error', 'Id not found!');
            return back();
        }

        $serial->delete();
        $this->resetExcept('card_id');
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_delete'));
    }

    public function mount($card_id)
    {
        if(!auth('admin')->user()->hasPermissionTo('show serials')){
            abort(401);
        }

        $this->card_id = $card_id;
    }

    public function render()
    {
        $serials = Serial::search(['key'], $this->search)->with('user', 'card')
            ->where('card_id', $this->card_id)->paginate(20);
        $card = Card::find($this->card_id);
        
        return view('livewire.serials-live', compact('serials', 'card'))
        ->extends('admin.layout')
        ->section('content');
    }
}
