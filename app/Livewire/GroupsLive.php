<?php

namespace App\Livewire;

use App\Models\Group;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class GroupsLive extends Component
{
    use LivewireAlert;

    public $group;
    public $title_ar;
    public $title_en;

    public function store()
    {
        $this->validate([
            'title_ar' => 'required|min:3|max:255',
            'title_en' => 'required|min:3|max:255',
        ]);

        $group = new Group();
        $group->title_ar = $this->title_ar;
        $group->title_en = $this->title_en;
        $group->save();
        
        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_add'));
    }
    public function openEditModal($group)
    {
        $group = Group::findOrFail($group);
        if($group){
            $this->title_ar = $group->title_ar;
            $this->title_en = $group->title_en;
            $this->group = $group->id;
        }
    }

    public function update()
    {
        $this->validate([
            'title_ar' => 'required|min:3|max:255',
            'title_en' => 'required|min:3|max:255',
        ]);

        $group = Group::find($this->group);
        if(!$group){
            $this->alert('error', 'Id not found!');
            return back();
        }
        $group->title_ar = $this->title_ar;
        $group->title_en = $this->title_en;
        $group->save();

        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_update'));
    }

    public function openDeleteModal($group)
    {
        $this->group = $group;
    }

    public function delete()
    {
        $group = Group::find($this->group);
        $group->delete();

        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_delete'));
    }

    public function mount()
    {
        if(!auth('admin')->user()->hasPermissionTo('show groups')){
            abort(401);
        }
    }

    public function render()
    {
        $groups = Group::get();
        return view('livewire.groups-live', compact('groups'))
        ->extends('admin.layout')
        ->section('content');
    }
}
