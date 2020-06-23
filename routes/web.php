<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('PagesController@root')->name("root");
//});

//Route::get('/','PagesController@root')->name('root')->middleware("verified");
Route::get('/','PagesController@root')->name('root');

Auth::routes();// Laravel 的用户认证路由

//Route::get('/home', 'HomeController@index')->nam

//e('home');

Auth::routes(['verify'=>true]);

Route::group(['middleware'=>['auth','verified']],function(){
    Route::get('user_address','UserAddressesController@index')->name('user_addresses.index');
    Route::get('user_addresses/create','UserAddressesController@create')->name('user_addresses.create');
    Route::post('user_addresses','UserAddressesController@store')->name('user_addresses.store');

});
