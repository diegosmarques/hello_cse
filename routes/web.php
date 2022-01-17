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



Route::namespace('App\Http\Controllers')->group(function(){
    
    Route::get('/', 'CelebrityController@index');

    Route::prefix('celebrity')->group(function(){
        // Creation of routes for the backend and the frontend
        // All the routes with the middleware auth, the user need to be logged in to access them
        // Give name to the routes so we can use it on the blade files and controllers on a easier way
        Route::get('/', 'CelebrityController@index')->name('celebrity.index');
        Route::get('/create', 'CelebrityController@create')->middleware(['auth'])->name('celebrity.create');
        Route::get('/show/{id}', 'CelebrityController@show');
        Route::get('/edit/{id}', 'CelebrityController@edit')->middleware(['auth'])->name('celebrity.edit');

        Route::post('/save', 'CelebrityController@store')->middleware(['auth'])->name('celebrity.store');
        
        Route::put('/update', 'CelebrityController@update')->middleware(['auth'])->name('celebrity.update');
        
        Route::delete('/delete/{id}', 'CelebrityController@destroy')->middleware(['auth'])->name('celebrity.destroy');

    });

    

    
});
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
