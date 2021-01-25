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
Auth::routes();
Route::get('/',  'PagesController@pocetna');
Route::get('/onama',  'PagesController@onama');
Route::get('/pocetna',  'PagesController@pocetna');
Route::get('/kontakt',  'PagesController@kontakt');
Route::resource('posts', 'PostsController');
Route::get('/home', 'HomeController@index')->name('home');

