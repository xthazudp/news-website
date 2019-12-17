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

Route::get('/','HomePageController@index');

Route::get('/listing','ListingPageController@index');

Route::get('/details','DetailsPageController@index');

Route::get('/hello',function(){
    return 'Hello World';
});

Route::get('/football',function(){
    return 'i love football';
});

Route::get('/user/{id}/{name?}',function($id,$name="sudip"){
    return 'your id id'.$id."and your name is".$name;
})->where('id','[0-9]+');

Route::get('/world','HelloController@hello');

Route::get('/add','AddController@index');

// Route::view('/about','about'); 

Route::view('/contact','contact');

Route::get('/about',['uses'=>'AboutController@about','as'=>'about']);
