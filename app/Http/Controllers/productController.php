<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Products;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class productController extends Controller
{
    function index(Request $request){
    	$data = Products::all();
    	$value = $request->session()->get('cart');
    	return view('home')->with('products', $data);
    }
    function listProduct($id) {
        $data = Products::where('id', $id)->first();
        return view('product')->with('product', $data);
    }
    function addProduct(Request $request, $id) {
        $pdr = Products::where('id', $id)->first();
        $request->session()->push('cart', $pdr);
        return $pdr;
    }
    function removeProduct(Request $request, $id) {
        $pdr = Products::where('id', $id)->first();
        
        $request->session()->pull('cart', $id);
        return $pdr;
    }
}
