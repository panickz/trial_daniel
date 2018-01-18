<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Mail;

class orderController extends Controller
{
    function viewOrder(Request $request) {
    	$data = $request->session()->get('cart');
        return view('order')->with('orders', $data);
    }
    function confirmOrder(Request $request) {
    	
        Mail::send('emails.send', ['title' => 'Thank you for your purchase.', 'message' => 'Product list should live in here. Eventually with PDF.'], function ($message)
		 {
		    $message->to(Auth::user()->email);
		});
		$request->session()->pull('cart', 0);
        return view('thanks');
    }
}
