<?php

namespace App\Livewire;

use App\Mail\SendSerial;
use App\Models\Order;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;
use App\Functions\WhatsApp;
use App\Models\Setting;
use Livewire\WithPagination;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class OrdersLive extends Component
{
    use WithPagination, LivewireAlert;
    protected $paginationTheme = 'bootstrap';

    public $order_id;
    public $orderToShow;

    public function openDeleteModal($order_id)
    {
        $this->order_id = $order_id;
    }

    public function delete()
    {
        $order = Order::find($this->order_id);
        if($order){
            $order->delete();
            $this->dispatch('closeModal');
            $this->alert('success', __('dash.alert_delete'));
        }
    }

    public function openShowModal($order_id)
    {
        $this->orderToShow = Order::with('transaction')->find($order_id);
    }

    public function autoApproveTogle()
    {
        $set = setting('order_auto');
        $setting = Setting::where('key', 'order_auto')->first();
        if($setting->value == 'true'){
            $setting->value = 'false';
        }else{
            $setting->value = 'true';
        }
        $setting->save();
        $this->alert('success', __('dash.alert_update'));
    }

    public function sendSerials($order_id)
    {
        $order = Order::find($order_id);
        if($order){
            foreach ($order->order_details as $detail) {
                foreach ($detail->serials as $serial) {
//                    WhatsApp::SendSerial($order->user->phone, $serial, $detail['card_title_'.lang()], lang());
                    Mail::to($order->user->email)->send(new SendSerial($serial,$detail['card_title_'.lang()],lang()));
                }
            }
            $order->is_sent = true;
            $order->save();
            $this->alert('success', __('dash.sended_successfully'));
        }
    }

    public function mount()
    {
        if(!auth('admin')->user()->hasPermissionTo('show orders')){
            abort(401);
        }
    }

    public function render()
    {
        // To clear incomplete paid orders
        Order::query()->where('payment_method_id', '!=', 1)
            ->WhereNull('transaction_id')->delete();

        $orders = Order::query()->
            where(function($query) {
                $query->where('payment_method_id', '!=', 1)
                    ->WhereNotNull('transaction_id');
            })->orWhere('payment_method_id', 1)->latest()
            ->paginate(30);

        return view('livewire.orders-live', compact('orders'))
        ->extends('admin.layout')
        ->section('content');
    }
}
