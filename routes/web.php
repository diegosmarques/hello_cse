<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CelebrityController;

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


Route::namespace('App\Http\Controllers')->group(function(){
    
    Route::get('/', 'CelebrityController@index');

    Route::prefix('celebrity')->group(function(){
        Route::get('/', 'CelebrityController@index');
        Route::get('/show/{id}', 'CelebrityController@show');
        Route::get('/edit/{id}', 'CelebrityController@edit');
        Route::get('/image/{filename}', 'CelebrityController@displayImage')->name('image.displayImage');
        Route::put('/update', 'CelebrityController@update');
    });

    Route::resource('celebrity', 'CelebrityController');

    
});