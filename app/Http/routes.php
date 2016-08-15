<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::get('/backbone', function () {
    return view('backbone');
});


Route::get('login', 'Auth\AuthController@getLogin');
Route::post('login', 'Auth\AuthController@postLogin');
Route::get('logout', 'Auth\AuthController@logout');
Route::get('/', 'HomeController@index');
// Registration Routes...
/*Route::get('register', 'Auth\AuthController@getRegister');
Route::post('register', 'Auth\AuthController@postRegister');*/
Route::get('/locate/expos', 'ExpositionsController@map');
Route::get('/locate/expo', 'ExpositionsController@expo');
Route::get('/book/expo/{id}', 'ExpositionsController@book');
Route::get('/visit/expo/{id}', 'ExpositionsController@visit');
Route::get('/stand/{id}', 'ExpositionsController@stand');
Route::get('/visit/stand/{id}', 'OrganizationController@visitStand');
Route::get('/reserve/{id}', 'ExpositionsController@reserve');
Route::post('/reserve/{id}', 'ExpositionsController@postReserve');

Route::get('/order/{status}/{id}', 'HomeController@updateOrder');

Route::get('/dashboards', 'HomeController@dashboards');

// Password Reset Routes...
Route::get('password/reset', 'Auth\PasswordController@getEmail');
Route::post('password/email', 'Auth\PasswordController@postEmail');
Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
Route::post('password/reset', 'Auth\PasswordController@postReset');
