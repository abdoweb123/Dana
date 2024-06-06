<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Serial;
use App\Models\Country;
use App\Models\UserOtp;
use App\Functions\WhatsApp;
use Illuminate\Http\Request;
use App\Functions\ResponseHelper;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\SaveOtpRequest;
use App\Http\Requests\CheckOtpRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Requests\VerifyOtpRequest;
use App\Http\Requests\ResetPasswordRequest;
use App\Http\Requests\RegistrationVerifyRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Models\Token;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendOTP;

class AuthUserController extends Controller
{
    public function userInformation()
    {
        $user = auth('sanctum')->user();
        if(!$user){
            $data = [
                'message' => 'dev:user not authorized!'
            ];
            return ResponseHelper::make($data, 'dev:user not authorized!',false,200);
        }
        $data = [
            'user' => $user,
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];
        return ResponseHelper::make($data);
    }

    public function updateUser(UpdateUserRequest $request)
    {
        $user = auth()->user();
        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->email = $request->email;
        if($request->has('country_id')){
            $user->country_id = $request->country_id;
        }
        $user->save();

        $data = [

            'user' => $user,
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];
        return ResponseHelper::make($data, __('dash.alert_update'));
    }

    public function login(LoginRequest $request)
    {
        $user = User::where('email',$request->email)->first();
        if(!$user){
            $data = [
                'msg' => __('auth.login_faild'),
            ];

            return ResponseHelper::make($data, __('auth.login_faild'),false,200);
        }
        if($user->is_blocked == true){
            return ResponseHelper::make(null, __('dash.account_suspended'), false, 200);
        }
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
            $user = auth('sanctum')->user();
            $token = Token::where('user_id', $user->id)->where('device_type', $request->device_type)->first();
            if(!$token){
                $token = new Token();
                $token->user_id = $user->id;
                $token->device_type = $request->device_type;
                $token->device_token = $request->device_token;
                $token->save();
            }else{
                $token->device_token = $request->device_token;
                $token->save();
            }
            $data = [
                'user' => $user,
                'token' => $user->createToken("API TOKEN")->plainTextToken
            ];
            return ResponseHelper::make($data);
        }else{
            $data = [
                'msg' => __('auth.login_faild'),
            ];

            return ResponseHelper::make($data, __('auth.login_faild'),false,200);
        }
    }

    public function registration(RegisterRequest $request)
    {
        $this->checkPhoneUnique($request->country_code, $request->phone);
        $this->checkPhoneLength($request->country_code, $request->phone);

        $country = Country::where('phone_code', $request->country_code)->first();

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->country_code.$request->phone;
        $user->country_id = $country->id;
        $user->password = bcrypt($request->password);
        $user->save();

        $token = new Token();
        $token->user_id = $user->id;
        $token->device_type = $request->device_type;
        $token->device_token = $request->device_token;
        $token->save();

        $data = [
            'user' => User::find($user->id),
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];

        return ResponseHelper::make($data);
    }

    public function saveOtp(SaveOtpRequest $request)
    {
        $otp = mt_rand(111111,999999);
        if($request->email && $request->phone){
            $user = User::where('email', $request->email)->where('phone', $request->phone)->first();
        }elseif($request->email){
            $user = User::where('email', $request->email)->first();
        }elseif($request->phone){
            $user = User::where('phone', $request->phone)->first();
        }
        if($user){
            $user_otp = new UserOtp();
            $user_otp->user_id = $user->id;
            $user_otp->otp = $otp;
            $user_otp->save();

            if($request->email){
                Mail::to($user->email)->send(new SendOTP($otp));
            }
            if($request->phone){
                WhatsApp::SendOTP($user->phone , $otp);
            }
            $data = [
                'otp' => strval($otp)
            ];
            return ResponseHelper::make($data, __('auth.otp_sent'));
        }else{
            return ResponseHelper::make(NULL, 'Not Found',false,200);
        }
    }

    public function checkPhone(SaveOtpRequest $request)
    {
        if($request->email && $request->phone){
            $user = User::where('email', $request->email)->where('phone', $request->phone)->first();
        }elseif($request->email){
            $user = User::where('email', $request->email)->first();
        }elseif($request->phone){
            $user = User::where('phone', $request->phone)->first();
        }

        if(!$user){
            $data = [
                'message' => __('auth.login_faild')
            ];
            return ResponseHelper::make($data, __('auth.login_faild'),false,200);
        }

        if($request->email && $request->phone){
            $user = User::where('email', $request->email)->where('phone', $request->phone)->first();
            return ResponseHelper::make(null, "User exist",true,200);
        }elseif($request->email){
            $user = User::where('email', $request->email)->first();
            return ResponseHelper::make(null, "Email exist",true,200);
        }elseif($request->phone){
            $user = User::where('phone', $request->phone)->first();
            return ResponseHelper::make(null, "phone exist",true,200);
        }
    }


    public function registrationVerify(RegistrationVerifyRequest $request)
    {

        $user_otp = UserOtp::where('otp', $request->otp)
            ->where('user_id', Auth::id())
            ->first();

        if(!$user_otp){
            return ResponseHelper::make(NULL, __('auth.wrong_otp'),false,200);
        }

        if ($user_otp->created_at > now()->addHour()) {
            $user_otp->delete();
            return ResponseHelper::make(NULL, __('auth.otp_is_expired'),false,200);
        }

        $user = auth('sanctum')->user();
        $user->is_verified = true;
        $user->save();

        $user_otp->delete();

        $data = [
            'user' => $user,
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];
        return ResponseHelper::make($data);
    }

    public function userVerified()
    {
        $user = auth('sanctum')->user();
        $user->is_verified = true;
        $user->save();

        $data = [
            'user' => $user,
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];
        return ResponseHelper::make($data);
    }

    public function checkOtp(CheckOtpRequest $request)
    {
        $user = NULL;
        if($request->email && $request->phone){
            $user = User::where('email', $request->email)->where('phone', $request->phone)->first();
        }elseif($request->email){
            $user = User::where('email', $request->email)->first();
        }elseif($request->phone){
            $user = User::where('phone', $request->phone)->first();
        }

        $user_otp = UserOtp::where('otp', $request->otp)
        ->where('user_id', $user->id)
        ->first();

        if(!$user_otp){
            return ResponseHelper::make(NULL, __('auth.wrong_otp'),false,200);
        }
        $data = [
            'otp' => $request->otp
        ];
        return ResponseHelper::make($data, 'otp is correct');
    }


    public function resetPassword(ResetPasswordRequest $request)
    {
        $user = auth('sanctum')->user();
        if ($user && Hash::check($request->input('old_password'), $user->password)) {
            $user->password = bcrypt($request->password);
            $user->save();
        } else {
            return ResponseHelper::make(NULL, __('auth.login_faild'),false,200);
        }

        $user_otp = UserOtp::where('otp', $request->otp)
            ->where('user_id', $user->id)
            ->first();
        if($user_otp){
            $user_otp->delete();
        }

        $data = [
            'user' => $user,
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];
        return ResponseHelper::make($data, __('auth.password_updated'));
    }

    public function changePassword(Request $request)
    {
        $user = User::where('email', $request->email)->first();

        if(!$user){
            $data = [
                'message' => __('auth.login_faild')
            ];
            return ResponseHelper::make($data, __('auth.login_faild'),false,200);
        }
        $user->password = bcrypt($request->password);
        $user->save();

        $data = [
            'user' => $user,
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ];
        return ResponseHelper::make($data, __('auth.password_updated'));
    }


    public function deleteMyAccount()
    {
        $user = auth('sanctum')->user();
        Serial::where('user_id', $user->id)->delete();
        Token::where('user_id', $user->id)->delete();
        $user->delete();

        return ResponseHelper::make(null, 'user deleted successfully', true, 200);
    }

    public function logout(Request $request)
    {
        $request->validate([
            'device_token' => 'required'
        ]);
        $token = Token::where('device_token', $request->device_token)->first();
        if($token){
            $token->delete();
        }
        auth('sanctum')->user()->currentAccessToken()->delete();

        return ResponseHelper::make(null, 'user loged out successfully', true, 200);
    }


    private static function checkPhoneLength($country_code, $phone)
    {
        $country = Country::where('phone_code', $country_code)->first();

        if(strlen($phone) != $country->length){
            $data = [
                'phone' => ['The phone number must be '.$country->length.' digits only.']
            ];
            return ResponseHelper::make($data, 'Validation errors',false,200);
        }

    }

    private static function checkPhoneUnique($country_code, $phone)
    {
        $check = User::Where('phone', $country_code.$phone)->first();
        if($check){
            $data = [
                'phone' => [__('auth.uniqe_phone_country_code')]
            ];
            return ResponseHelper::make($data, 'Validation errors',false,200);
        }
    }

}
