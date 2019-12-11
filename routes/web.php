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
        Route::get('/{id}/delete', 'UserController@delete')->name('user.delete');
    });

    //Video Route
    Route::group(['prefix' => 'videos'], function() {
        Route::get('/', 'VideoController@index')->name('video.index');
        Route::get('/create', 'VideoController@getCreate')->name('video.getCreate');
        Route::post('/create', 'VideoController@postCreate')->name('video.postCreate');
        Route::get('/{id}/update', 'VideoController@getUpdate')->name('video.getUpdate');
        Route::post('{id}/update', 'VideoController@postUpdate')->name('video.postUpdate');
        Route::get('/{id}/delete', 'VideoController@delete')->name('video.delete');
    });

    //Article Route
    Route::group(['prefix' => 'articles'], function() {
        Route::get('/', 'ArticleController@index')->name('article.index');
        Route::get('/create', 'ArticleController@getCreate')->name('article.getCreate');
    });

    //Media Route
    Route::group(['prefix' => 'media'], function() {
        Route::post('/single-upload', 'MediaController@single')->name('media.single');
    });
});
