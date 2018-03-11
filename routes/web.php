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

Route::get('/', 'IndexController@index');
Route::get('/page', 'IndexController@page');
Route::get('/articles/{id}', 'IndexController@show')->name('articleShow');
Route::get('/page/add', [
    'uses' => 'IndexController@add',
    'middleware' => 'roles',
    'roles' => ['Admin', 'Author']
]);
Route::post('/page/add', 'IndexController@store')->name('articleStore');
Route::delete('/page/delete/{article}', function (\App\Article $article) {
    $article->delete();

    return redirect('/');
})->name('articleDelete');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
