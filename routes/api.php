<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['namespace' => 'Api'], function() {
    //Video Route
    Route::group(['prefix' => 'videos'], function() {
        Route::get('/', 'VideoController@index');
        Route::get('/{id}', 'VideoController@detail');
    });

    //Course Route
    Route::group(['prefix' => 'courses'], function() {
        Route::get('/{month}/{year}', 'CourseController@detail');
    });

    //Article Route
    Route::group(['prefix' => 'articles'], function() {
        Route::get('/group/{id}', 'ArticleController@group');
        Route::get('/{id}', 'ArticleController@detail');
    });

    //Subject Route
    Route::group(['prefix' => 'subjects'], function() {
        Route::get('/home', 'SubjectController@home');
        Route::get('/', 'SubjectController@list');
        Route::get('/{id}', 'SubjectController@detail');
    });

    //Teacher Route
    Route::group(['prefix' => 'teachers'], function() {
        Route::get('/subject/{id}', 'TeacherController@subject');
    });

    //Media Route
    Route::group(['prefix' => 'media'], function() {
        Route::get('/subject/{id}', 'MediaController@subject');
    });

    //Customer Route
    Route::group(['prefix' => 'customer'], function() {
        Route::post('/', 'CustomerController@post');
    });
});