<?php

namespace App\View\Components;

use Closure;
use App\Models\Notification as NotificationModal;
use Illuminate\View\Component;
use Illuminate\Contracts\View\View;

class Notification extends Component
{
    public $notifications, $notifications_count;
    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $this->notifications = NotificationModal::where('reading_at', null)->latest()->take(5)->get();
        $this->notifications_count = NotificationModal::where('reading_at', null)->count();
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.notification');
    }
}
