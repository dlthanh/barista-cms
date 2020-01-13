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
    Route::get('/', 'DashboardController@index')->name('dashboard');

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
        Route::post('/create', 'ArticleController@postCreate')->name('article.postCreate');
        Route::get('/{id}/update', 'ArticleController@getUpdate')->name('article.getUpdate');
        Route::post('{id}/update', 'ArticleController@postUpdate')->name('article.postUpdate');
        Route::get('/{id}/delete', 'ArticleController@delete')->name('article.delete');
    });

    //Course Route
    Route::group(['prefix' => 'courses'], function() {
        Route::get('/', 'CourseController@index')->name('course.index');
        Route::get('/create', 'CourseController@getCreate')->name('course.getCreate');
        Route::post('/create', 'CourseController@postCreate')->name('course.postCreate');
        Route::get('/{id}/update', 'CourseController@getUpdate')->name('course.getUpdate');
        Route::post('{id}/update', 'CourseController@postUpdate')->name('course.postUpdate');
        Route::get('/{id}/delete', 'CourseController@delete')->name('course.delete');
    });

    //Subject Route
    Route::group(['prefix' => 'subjects'], function() {
        Route::get('/', 'SubjectController@index')->name('subject.index');
        Route::get('/create', 'SubjectController@getCreate')->name('subject.getCreate');
        Route::post('/create', 'SubjectController@postCreate')->name('subject.postCreate');
        Route::get('/{id}/update', 'SubjectController@getUpdate')->name('subject.getUpdate');
        Route::post('{id}/update', 'SubjectController@postUpdate')->name('subject.postUpdate');
        Route::get('/{id}/update/step2', 'SubjectController@getStep2')->name('subject.getUpdate.step2');
        Route::post('{id}/update/step2', 'SubjectController@postStep2')->name('subject.postUpdate.step2');
        Route::get('/{id}/update/step3', 'SubjectController@getStep3')->name('subject.getUpdate.step3');
        Route::post('{id}/update/step3', 'SubjectController@postStep3')->name('subject.postUpdate.step3');
        Route::get('/{id}/update/step4', 'SubjectController@getStep4')->name('subject.getUpdate.step4');
        Route::post('{id}/update/step4', 'SubjectController@postStep4')->name('subject.postUpdate.step4');
        Route::get('/{id}/delete', 'SubjectController@delete')->name('subject.delete');
    });

    //Media Route
    Route::group(['prefix' => 'media'], function() {
        Route::post('/single-upload', 'MediaController@single')->name('media.single');
        Route::post('/gallery-upload', 'MediaController@gallery')->name('media.gallery');
        Route::post('/medium-upload', 'MediaController@medium')->name('media.medium');
        Route::post('/delete', 'MediaController@delete')->name('media.delete');
    });

    //Teacher Route
    Route::group(['prefix' => 'teachers'], function() {
        Route::get('/', 'TeacherController@index')->name('teacher.index');
        Route::get('/create', 'TeacherController@getCreate')->name('teacher.getCreate');
        Route::post('/create', 'TeacherController@postCreate')->name('teacher.postCreate');
        Route::get('/{id}/update', 'TeacherController@getUpdate')->name('teacher.getUpdate');
        Route::post('{id}/update', 'TeacherController@postUpdate')->name('teacher.postUpdate');
        Route::get('/{id}/delete', 'TeacherController@delete')->name('teacher.delete');
    });

    //Customer Route
    Route::group(['prefix' => 'customers'], function() {
        Route::get('/', 'CustomerController@index')->name('customer.index');
    });
});
