<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

# ROTAS DO USUÁRIO
Auth::routes();

# Home
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('auth');

# Página Inicial
Route::get('/', function () {    
    return view('welcome');
});