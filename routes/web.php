<?php

use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\ProfileController;
use App\Http\Controllers\AuthFrontUserController;
use App\Http\Controllers\CartFrontController;
use App\Http\Controllers\Dash\CardController;
use App\Models\Contactus;
use App\Livewire\AdminLive;
use App\Livewire\SettingLive;
use App\Livewire\ContactusLive;
use App\Livewire\NotificationLive;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\Dash\HomeController;
use App\Http\Controllers\Dash\AdminLoginController;
use App\Http\Controllers\Dash\PermissionController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\ProfileFrontController;
use App\Livewire\Aboutus;
use App\Livewire\CardsLive;
use App\Livewire\CategoryLive;
use App\Livewire\Front\CartFrontLive;
use App\Livewire\GroupsLive;
use App\Livewire\OrdersLive;
use App\Livewire\PaymentMethodsLive;
use App\Livewire\PromoCodeLive;
use App\Livewire\PublicSetting;
use App\Livewire\SerialsLive;
use App\Livewire\Sidepages\PrivacyLive;
use App\Livewire\Sidepages\TermsLive;
use App\Livewire\SlideLive;
use App\Livewire\UsersLive;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::prefix('dashboard')->as('dashboard.')->group(function(){

    Route::middleware('auth:admin')->group(function(){
        Route::get('/', [HomeController::class, 'index'])->name('home');

        Route::get('groups', GroupsLive::class)->name('groups');
        Route::get('categories', CategoryLive::class)->name('categories');
        Route::get('categories/{category_id}/cards', CardsLive::class)->name('category_cards');
        Route::get('/cards/{card_id}/serials', SerialsLive::class)->name('serials');
        Route::post('/import/serials', [CardController::class, 'importSerials'])->name('import.serials'); // serials
        Route::post('/import/cards', [CardController::class, 'importCards'])->name('import.cards'); // cards
        // download excel example
        Route::post('/download/excel', [CardController::class, 'downloadExcel'])->name('download.excel');



        Route::get('promo-codes', PromoCodeLive::class)->name('promo_codes');

        Route::get('admins', AdminLive::class)->name('admins');
        Route::get('permissions/{admin_id}', [PermissionController::class, 'index'])->name('permissions');
        Route::post('permissions_post/{admin_id}', [PermissionController::class, 'store'])->name('permissions_post');
        Route::get('notifications', NotificationLive::class)->name('notifications');
        Route::get('contact-messages', ContactusLive::class)->name('contacts');
        Route::get('slides', SlideLive::class)->name('slider-images');
        Route::get('aboutus', Aboutus::class)->name('aboutus');
        Route::get('public-setting', PublicSetting::class)->name('public_setting');
        Route::get('terms', TermsLive::class)->name('terms');
        Route::get('privacy', PrivacyLive::class)->name('privacy');
        Route::get('payment_methods', PaymentMethodsLive::class)->name('payment_methods');

        Route::get('orders', OrdersLive::class)->name('orders');
        // Route::get('regions', RegionsLive::class)->name('regions');
        Route::get('users', UsersLive::class)->name('users');
        Route::post('logout', [AdminLoginController::class, 'logout'])->name('logout');
    });

    Route::get('login', [AdminLoginController::class, 'index'])->name('login');
    Route::post('login', [AdminLoginController::class, 'login'])->name('login.post');
});

Route::get('/', [FrontController::class, 'home'])->name('home');
Route::get('/group/{group_id}', [FrontController::class, 'group'])->name('group');
Route::get('/category/{category_id}/{category_name?}', [FrontController::class, 'category'])->name('category');
Route::get('/cards/{category_id}/{category_name?}', [FrontController::class, 'cards'])->name('cards');

Route::get('/login', [AuthFrontUserController::class, 'index'])->name('login.index');
Route::post('/login', [AuthFrontUserController::class, 'login'])->name('login.post');
Route::get('register', [AuthFrontUserController::class, 'registerIndex'])->name('register.index');
Route::post('register', [AuthFrontUserController::class, 'register'])->name('register.post');

Route::middleware('auth')->group(function(){
    Route::get('register/check_otp', [AuthFrontUserController::class, 'check_otp'])->name('check_otp');
    Route::post('register/check_otp/send_again', [AuthFrontUserController::class, 'sendOtpAgain'])->name('send_otp_again');
    Route::post('register/check_otp_post', [AuthFrontUserController::class, 'check_otp_post'])->name('check_otp_post');
    Route::get('register/success_verified', [AuthFrontUserController::class, 'success_verified'])->name('success_verified');

    Route::get('my_profile', [ProfileFrontController::class, 'myProfile'])->name('my_profile');
    Route::post('change_profile', [ProfileFrontController::class, 'change_profile'])->name('change_profile');
    Route::get('change_password', [ProfileFrontController::class, 'change_password'])->name('change_password');
    Route::post('change_password_post', [ProfileFrontController::class, 'change_password_post'])->name('change_password_post');

    Route::post('add_to_cart', [CartFrontController::class, 'add_to_cart'])->name('add_to_cart');
    Route::get('cart', CartFrontLive::class)->name('cart.index');
});

Route::get('language/{locale}', function($locale){
    if (isset($locale) && in_array($locale, ['ar','en'])) {
        app()->setLocale($locale);
        session()->put('locale', $locale);
    }
    return redirect()->back();
})->name('lang');

Route::any('artisan/{command}', function($command){
    Artisan::call($command);
    dd(Artisan::output());

})->name('artisan');

