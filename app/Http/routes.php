<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

use Illuminate\Http\Request;
use App\Http\Controllers;

Route::group(['middleware' => ['web']], function () {
    // PRODUCT AND HOME PAGE ROUTES
    Route::get('/', 'productController@index');
    Route::get('/product/{slug}/{id}', 'productController@listProduct');
    Route::post('/product/add/{id}', 'productController@addProduct'); // For Async Calls only. No view rendered.
    Route::post('/product/remove/{id}', 'productController@removeProduct'); // For Async Calls only. No view rendered.
    Route::delete('/product/{id}', 'productController@delete' );
    // CART VIEWS
    Route::get('/cart/view', 'orderController@viewOrder');
    Route::get('/cart/thank_you', 'orderController@confirmOrder');
    Route::auth();
    
});
