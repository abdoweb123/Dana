<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Country;
use App\Models\UserOtp;
use App\Functions\WhatsApp;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthFrontUserController extends Controller
{
    public function index()
    {
        if(auth()->check()){
            return redirect()->route('home');
        }
        $countries = Country::get();
        return view('userarea.auth.login', compact('countries'));
    }

    public function login(Request $request)
    {
        $request->validate([
            'phone' => 'required',
            'password' => 'required',
        ]);

        $country = Country::where('phone_code', '+'.$request->country_code)->first();

        if(strlen($request->phone) != $country->length){
            return back()->with('error', 'The phone number must be '.$country->length.' digits only.');
        }

        if(Auth::attempt(['phone' => '+'.$request->country_code . $request->phone, 'password' => $request->password])){
            return redirect()->route('home');
        }else{
            return back()->with('error', __('auth.login_faild'));
        }
    }

    public function registerIndex()
    {
        $countries = Country::get();
        return view('userarea.auth.register', compact('countries'));
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|unique:users,email',
            'phone' => 'required|unique:users,phone',
            'password' => 'required|confirmed',
        ]);

        $country = Country::where('phone_code', '+'.$request->country_code)->first();

        if(strlen($request->phone) != $country->length){
            return back()->with('error', 'The phone number must be '.$country->length.' digits only.');
        }

        $check = User::Where('phone', $request->country_code.$request->phone)->first();
        if($check){
            return back()->with('error', __('auth.uniqe_phone_country_code'));
        }

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->country_code.$request->phone;
        $user->password = bcrypt($request->password);
        $user->save();
        Auth::login($user);

        UserOtp::where('user_id', $user->id)->delete();
        $user_otp = new UserOtp();
        $user_otp->user_id = $user->id;
        $user_otp->otp = WhatsApp::SendOTP($user->phone);
        $user_otp->save();

        return redirect()->route('check_otp')->with('success', __('auth.otp_sent'));
    }

    public function check_otp()
    {

        return view('userarea.auth.check_otp');
    }

    public function sendOtpAgain()
    {
        $otps = UserOtp::where('user_id', auth()->user())->get();
        foreach ($otps as $key => $value) {
            $value->delete();
        }
        $user_otp = new UserOtp();
        $user_otp->user_id = auth()->id();
        $user_otp->otp = WhatsApp::SendOTP(auth()->user()->phone);
        $user_otp->save();

        return back()->with('success', __('auth.otp_sent'));
    }

    public function check_otp_post(Request $request)
    {
        $request->validate([
            'otp' => 'required|max:255'
        ]);
        $otp = UserOtp::where('user_id', auth()->id())->first();
        if(!$otp){
            return back()->with('error', __('auth.wrong_otp'));
        }else{
            if($request->otp == $otp->otp){
                $user = User::find($otp->user_id);
                $user->is_verified = true;
                $user->save();

                $otps = UserOtp::where('user_id', auth()->user())->get();
                foreach ($otps as $key => $value) {
                    $value->delete();
                }

                return redirect()->route('success_verified');
            }else{
                return back()->with('error', __('auth.wrong_otp'));
            }
        }
    }

    public function success_verified()
    {
        return view('userarea.auth.success_verified');
    }

}
