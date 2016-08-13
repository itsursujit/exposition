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


/*
|--------------------------------------------------------------------------
| API routes
|--------------------------------------------------------------------------
*/

Route::group(['prefix' => 'api', 'namespace' => 'API'], function () {
    Route::group(['prefix' => 'v1'], function () {
        require config('infyom.laravel_generator.path.api_routes');
    });
});


Route::get('login', 'Auth\AuthController@getLogin');
Route::post('login', 'Auth\AuthController@postLogin');
Route::get('logout', 'Auth\AuthController@logout');
Route::get('/', 'HomeController@index');
// Registration Routes...
Route::get('register', 'Auth\AuthController@getRegister');
Route::post('register', 'Auth\AuthController@postRegister');
Route::get('/locate/expos', 'ExpositionsController@map');
Route::get('/locate/expo', 'ExpositionsController@expo');
Route::get('/book/expo/{id}', 'ExpositionsController@book');
Route::get('/stand/{id}', 'ExpositionsController@stand');

// Password Reset Routes...
Route::get('password/reset', 'Auth\PasswordController@getEmail');
Route::post('password/email', 'Auth\PasswordController@postEmail');
Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
Route::post('password/reset', 'Auth\PasswordController@postReset');

Route::get('/home', 'HomeController@index');

Route::get('generator_builder', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@builder');

Route::get('field_template', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@fieldTemplate');

Route::post('generator_builder/generate', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@generate');


Route::resource('expositions', 'ExpositionsController');

Route::resource('stands', 'StandController');

Route::resource('organizations', 'OrganizationController');

Route::resource('orders', 'OrderController');


Route::resource('organizationStands', 'OrganizationStandsController');

Route::resource('orderItems', 'OrderItemsController');

Route::resource('orderItems', 'OrderItemsController');

Route::resource('orderItems', 'OrderItemsController');

Route::resource('orderItems', 'OrderItemsController');