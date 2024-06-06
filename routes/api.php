<?php

use App\Http\Controllers\Api\PromoCodeController;
use App\Models\Card;
use App\Models\Serial;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Functions\ResponseHelper;
use App\Functions\PushNotification;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\TapController;
use App\Http\Controllers\Api\CartController;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\ContactController;
use App\Http\Controllers\Api\CountryController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\ProfileController;
use App\Http\Controllers\Api\AuthUserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('countries', [CountryController::class, 'index']);
//Route::get('countries', function (){return request();});

//Authentication
Route::get('user_information', [AuthUserController::class, 'userInformation']);
Route::post('login', [AuthUserController::class, 'login']);
Route::post('registration', [AuthUserController::class, 'registration']);
Route::post('save_otp', [AuthUserController::class, 'saveOtp']);
Route::post('registration_verify', [AuthUserController::class, 'registrationVerify'])->middleware('auth:sanctum');
Route::post('user_verified', [AuthUserController::class, 'userVerified'])->middleware('auth:sanctum');
Route::post('check_otp', [AuthUserController::class, 'checkOtp']);
Route::post('reset_password', [AuthUserController::class, 'resetPassword']);
Route::post('change_password', [AuthUserController::class, 'changePassword']);
Route::post('delete_account', [AuthUserController::class, 'deleteMyAccount'])->middleware('auth:sanctum');
Route::post('logout', [AuthUserController::class, 'logout'])->middleware('auth:sanctum');
Route::post('check_phone', [AuthUserController::class, 'checkPhone']);

Route::get('terms', [HomeController::class, 'terms']);
Route::get('privacy', [HomeController::class, 'privacy']);


/////////////////////////////
Route::get('home', [HomeController::class, 'index']);
Route::get('group/{group_id}', [HomeController::class, 'group']);
Route::get('categories', [HomeController::class, 'categories']);
Route::get('categories/{category_id}/sub_categories', [HomeController::class, 'subCategories']);
Route::get('sub_categories/{sub_category_id}/cards', [HomeController::class, 'subCategory']);
Route::get('category_title/{cartegory_id}', [HomeController::class, 'category_title']);
Route::get('card/{card_id}', [HomeController::class, 'show_card']);
Route::get('search', [HomeController::class, 'search']);
Route::get('about_us', [HomeController::class, 'about']);

Route::middleware('auth:sanctum')->group(function(){
    Route::get('cart', [CartController::class, 'index']);
    Route::post('cart/add_item', [CartController::class, 'addItem']);
    Route::post('cart/update_item', [CartController::class, 'updateItem']);
    Route::post('cart/remove_item', [CartController::class, 'removeItem']);
    Route::get('cart/quantity', [CartController::class, 'get_quantity']);
    Route::post('cart/delete_all', [CartController::class, 'delete_all']);
    Route::get('payment-details', [PromoCodeController::class, 'getPaymentData']);
    Route::get('payment_methods', [OrderController::class, 'payment_methods']);
    Route::post('use_coupone', [OrderController::class, 'use_coupon']);
    Route::post('delete-coupon', [PromoCodeController::class, 'deleteCoupon']);
    Route::post('order', [OrderController::class, 'store']);

    Route::get('old_orders', [ProfileController::class, 'old_orders']);
    Route::get('old_order_details/{order_id}', [ProfileController::class, 'old_order_details']);
});


Route::get('tap_response', [TapController::class, 'response'])->name('tap_response');
Route::get('tap/check_result', [TapController::class, 'check_result'])->name('check_result');

Route::post('contact_us', [HomeController::class, 'contactUs']);

Route::get('footer', [HomeController::class, 'footer']);

Route::post('version_checker', [HomeController::class, 'version_checker']);

Route::get('more', [HomeController::class, 'more']);

Route::get('currency', function(){
    $data = [
        'currency' => request()->country_id ? Country::find(request()->country_id)->currancy_code : "BD"
    ];
    return ResponseHelper::make($data);
});

Route::post('clear_cards', function(){
    $cards = Serial::get();
    foreach($cards as $card){
        $card->user_id = null;
        $card->save();
    }
});

Route::post('push', function(Request $request){
    PushNotification::send('test message', null);
    dd('success');
});

// Route::get('about-us', [HomeController::class, 'about_us']);

// Route::get('products', [ProductController::class, 'index']);

//


