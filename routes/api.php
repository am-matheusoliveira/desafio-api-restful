<?php

use Illuminate\Support\Facades\Route;

# Grupo de Rotas API - Usuário
Route::prefix('user')->name('auth.')->group(function(){
    // Novo Usuário
    Route::post('/register', [App\Http\Controllers\AuthController::class, 'register']);
    
    // Usuário Login
    Route::post('/login', [App\Http\Controllers\AuthController::class, 'login']);
    
    // Usuário Logout
    Route::post('/logout', [App\Http\Controllers\AuthController::class, 'logout'])->middleware('auth:api');
});

# Grupo de Rotas API - Vagas
Route::middleware('auth:api')->prefix('v1')->name('vagas.')->group(function(){

    // Rota para listar todas as vagas
    Route::get('/buscar-vagas', [App\Http\Controllers\Api\V1\VagasEmpregoController::class, 'buscar_vagas'])->name('buscar-vagas');

    // Rota para listar uma vaga específica com base em seu ID
    Route::get('/buscar-vaga/{id}', [App\Http\Controllers\Api\V1\VagasEmpregoController::class, 'buscar_vaga'])->name('buscar-vaga');

});