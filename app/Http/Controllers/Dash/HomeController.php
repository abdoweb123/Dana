<?php

namespace App\Http\Controllers\Dash;

use Carbon\Carbon;
use App\Models\Card;
use App\Models\User;
use App\Models\Group;
use App\Models\Image;
use App\Models\Order;
use App\Models\Serial;
use App\Models\Company;
use App\Models\Contact;
use App\Models\Product;
use App\Models\Project;
use App\Models\Service;
use App\Models\Category;
use App\Models\Contactus;
use App\Models\CompanyEmail;
use App\Http\Controllers\Controller;
use LaravelDaily\LaravelCharts\Classes\LaravelChart;

class HomeController extends Controller
{
    public function index()
    {
        $home = [
            'daily_orders' => Order::where('created_at', '>=', Carbon::now()->startOfDay())->sum('net_total'),
            'weekly_orders' => Order::where('created_at', '>=', Carbon::now()->startOfWeek())->sum('net_total'),
            'monthly_orders' => Order::where('created_at', '>=', Carbon::now()->startOfMonth())->sum('net_total'),
            'categories' => Category::count(),
            'cards' => Card::count(),
            'groups' => Group::count(),
            'serials' => Serial::where('user_id', null)->count(),
            'sold_serials' => Serial::whereNotNull('user_id')->count(),
            'orders' => Order::count(),
            'contacs' => Contact::count(),
            'users' => User::count(),
        ];

        $chart_options = [
            'chart_title' => __('dash.orders'),
            'report_type' => 'group_by_date',
            'model' => 'App\Models\Order',
            'group_by_field' => 'created_at',
            'group_by_period' => 'day',
            'chart_type' => 'bar',
        ];
        $orders = new LaravelChart($chart_options);
                
        $chart_options = [
            'chart_title' => __('dash.users'),
            'report_type' => 'group_by_date',
            'model' => 'App\Models\User',
            'group_by_field' => 'created_at',
            'group_by_period' => 'day',
            'chart_type' => 'line',
        ];
    
        $users = new LaravelChart($chart_options);

        return view('admin.index', compact('home', 'orders', 'users'));
    }
}
