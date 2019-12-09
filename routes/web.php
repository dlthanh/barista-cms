<?php

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

Auth::routes([
    'register' => false,
    'reset' => false,
    'verify' => false,
]);

Route::group(['middleware' => 'auth'], function() {
    Route::get('/', function() {
        return view('dashboard');
    })->name('dashboard');

    // User Route
    Route::group(['middleware' => 'admin', 'prefix' => 'users'], function() {
        Route::get('/', 'UserController@index')->name('user.index');
        Route::get('/create', 'UserController@getCreate')->name('user.getCreate');
        Route::post('/create', 'UserController@postCreate')->name('user.postCreate');
        Route::get('/{id}/update', 'UserController@getUpdate')->name('user.getUpdate');
        Route::post('{id}/update', 'UserController@postUpdate')->name('user.postUpdate');
    });
});
