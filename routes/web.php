<?php

use Illuminate\Support\Facades\Route;

# Página Inicial
Route::get('/', function () {
    return view('welcome');
});
