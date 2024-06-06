<?php

namespace App\Livewire;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;
use App\Functions\PushNotification;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class UsersLive extends Component
{
    use WithPagination, LivewireAlert;
    protected $paginationTheme = 'bootstrap';

    public $search;

    public $user_id;
    public $name;
    public $email;
    public $phone;
    public $password;


    public function post()
    {
        PushNotification::send('test message', null);
        dd('success');
    }

    public function store()
    {
        $this->validate([
            'name' => 'required|min:3',
            'phone' => 'required|unique:users,phone',
            'email' => 'required|email|unique:users,email',
            'password' => 'required'
        ]);

        $user = new User();
        $user->name = $this->name;
        $user->email = $this->email;
        $user->phone = $this->phone;
        $user->is_verified = true;
        $user->password = bcrypt($this->password);
        $user->save();

        $this->reset();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_add'));
    }


    public function openEditModal($user_id)
    {
        $user = User::findOrFail($user_id);
        if($user){
            $this->name = $user->name;
            $this->email = $user->email;
            $this->phone = $user->phone;
            $this->user_id = $user_id;
        }
    }

    public function update()
    {
        $this->validate([
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users,email,'.$this->user_id,
            'phone' => 'required|unique:users,phone,'.$this->user_id,
        ]);

        $user = User::find($this->user_id);
        if(!$user){
            $this->alert('error', 'Id not found!');
            return back();
        }
        $user->name = $this->name;
        $user->email = $this->email;
        $user->phone = $this->phone;
        $user->save();

        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_update'));
    }

    public function openDeleteModal($user_id)
    {
        $this->user_id = $user_id;
    }

    public function delete()
    {
        $user = User::find($this->user_id);
        if(!$user){
            $this->alert('error', 'Id not found!');
            return back();
        }

        $user->delete();
        $this->dispatch('closeModal');
        $this->alert('success', __('dash.alert_delete'));
    }

    public function blockToggle($user_id)
    {
        $user = User::find($user_id);
        if($user){
            $user->is_blocked = !$user->is_blocked;
            $user->save();
            $user->tokens()->delete();
            $this->alert('success', __('dash.alert_update'));
        }
    }

    public function mount()
    {
        if(!auth('admin')->user()->hasPermissionTo('show users')){
            abort(401);
        }
    }

    public function render()
    {
        $users = User::withCount('tokens')->search(['name', 'email', 'phone'], $this->search)->paginate(50);
        return view('livewire.users-live', compact('users'))
        ->extends('admin.layout')
        ->section('content');
    }
}
