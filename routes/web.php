<?php

use Illuminate\Support\Facades\Route;

# Home - não implementado
# Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

# Página Inicial
Route::get('/', function () {
    return view('welcome');
});
