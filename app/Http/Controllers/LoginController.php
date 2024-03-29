<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(){
        return view('login.index');
    }

    public function loginCheck(Request $request){
        $credentials = $request->only('email','password');
        if(Auth::attempt($credentials)){
            if(Auth::user()->role=='admin') return redirect()->route('admin.home');
            else return redirect()->route('home');
        }
        else {
            return redirect()->route('login')->withErrors('Email address or password is incorrect!');
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('login');
    }

    public function admin(){
        return view('admin.home');
    }
    public function guest(){
        return view('index');
    }
    public function detail(){
        return view('detail');
    }
    public function news(){
        return view('news');
    }
    public function inquery(){
        return view('inquery');
    }
    public function upload_work(){
        return view('upload_work');
    }
    public function RegisterUser(){
        return view('login.register');
    }
    public function register(Request $request){
        $email = User::where('email','=',$request->email)->first();
        if(true){ //$request->role=='user'
            if ($email==null) {
                $user = new User();
                $user->name = $request->name;
                $user->email = $request->email;
                $user->role = $request->role;
                $user->password = Hash::make($request->password);
                $user->save();
            }
            else{
                return redirect()->route('register.user')->withErrors('This email is registered. Please enter another email address.');
            }
        }
        return redirect()->route('login');
    }
}
