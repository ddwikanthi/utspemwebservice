<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});

$app->get('/buku','Buku@index');
$app->get('/buku/{id}', 'Buku@show');
$app->post('/buku', 'Buku@store');
$app->put('/buku/{id}', 'Buku@update');
$app->delete('/buku/{id}', 'Buku@destroy');

$app->get('/kategori','Kategori@index');
$app->get('/kategori/{id}', 'Kategori@show');
$app->post('/kategori', 'Kategori@store');
$app->put('/kategori/{id}', 'Kategori@update');
$app->delete('/kategori/{id}', 'Kategori@destroy');
