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

Route::get('/', function () {
    return view('welcome');
});
Route::namespace('Frontend')->group(function (){
    Route::get('/','DefaultController@index')->name('home.Index');

    Route::get('/blog','BlogController@index')->name('blog.Index');
    Route::get('/blog/{slug}','BlogController@detail')->name('blog.Detail');

    Route::get('/page/{slug}','PageController@detail')->name('page.Detail');

    Route::get('/contact','DefaultController@contact')->name('contact.Index');
    Route::post('/contact','DefaultController@sendMail');
});

Route::namespace('Backend')->group(function (){
        Route::prefix('admin')->group(function (){
            Route::get('/dashboard','DefaultController@index')->name('admin.Index')->middleware('admin');
            Route::get('/','DefaultController@login')->name('admin.Login');
            Route::get('/logout','DefaultController@logout')->name('admin.Logout');
            Route::post('/login','DefaultController@authenticate')->name('admin.Auth');
        });
    Route::middleware(['admin'])->group(function (){
    Route::prefix('admin/setting')->group(function (){
        Route::get('/','SettingController@index')->name('setting.Index');
        Route::post('','SettingController@sortable')->name('setting.Sortable');
        Route::get('/delete/{id}','SettingController@delete');
        Route::get('/edit/{id}','SettingController@edit')->name('setting.Edit');
        Route::post('/{id}','SettingController@update')->name('setting.Update');
        });
    });
});



Route::namespace('Backend')->group(function (){
    Route::prefix('admin')->group(function (){
        Route::middleware(['admin'])->group(function (){
        //BLOG
        Route::post('blog/sortable','BlogController@sortable')->name('blog.Sortable');
        Route::resource('blog','BlogController');

        //PAGE
        Route::post('page/sortable','PageController@sortable')->name('page.Sortable');
        Route::resource('page','PageController');

        //SLIDER
        Route::post('slider/sortable','SliderController@sortable')->name('slider.Sortable');
        Route::resource('slider','SliderController');

        //ADMIN
        Route::post('user/sortable','UserController@sortable')->name('user.Sortable');
        Route::resource('user','UserController');
        });
    });
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
