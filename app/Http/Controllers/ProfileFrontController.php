<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfileFrontController extends Controller
{
    public function myProfile()
    {
        $user = Auth::user();
        return view('userarea.profile.myprofile', compact('user'));
    }

    public function change_profile(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|max:255',
            'phone' => 'required|unique:users,phone,'.auth()->id(),
        ]);
        $user = auth()->user();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->save();

        return back()->with('success', __('dash.saved_successfully'));
    }

    public function change_password()
    {
        return view('userarea.profile.change_pass');
    }

    public function change_password_post(Request $request)
    {
        $request->validate([
            'password' => 'required|max:255',
            'new_password' => 'required|max:255|confirmed',
        ]);
        $user = User::find(auth()->id());
        if (Hash::check($request->password, $user->password)) {
            $user->password = bcrypt($request->new_password);
            $user->save();
            return back()->with('success', __('auth.password_updated'));
        } else {
            return back()->with('error', __('auth.login_faild'));
        }        
    }
}
