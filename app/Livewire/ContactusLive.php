<?php

namespace App\Livewire;

use App\Models\Contact;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Livewire\WithPagination;

class ContactusLive extends Component
{
    use WithPagination, LivewireAlert;
    public $search;
    public $name, $email, $message, $created_at;

    public function openShowModal($contact_id)
    {
        $contact = Contact::find($contact_id);
        if($contact){
            $this->name = $contact->name;
            $this->email = $contact->email;
            $this->message = $contact->body;
            $this->created_at = $contact->created_at;
        }
    }

    public function responsed($contact_id, $response)
    {
        $contact = Contact::find($contact_id);
        if($contact){
            $contact->response = $response;
            $contact->save();
            $this->alert('success', __('dash.alert_update'));
        }
    }

    public function mount()
    {
        if(!auth('admin')->user()->hasPermissionTo('show contact messages')){
            abort(401);
        }
    }

    public function render()
    {
        $contacts = Contact::search(['name', 'email'], $this->search)->paginate(30);

        return view('livewire.contactus-live', compact('contacts'))
        ->extends('admin.layout')
        ->section('content');
    }
}
