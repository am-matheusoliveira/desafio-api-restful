<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

/**
 * @OA\Info(title="Vagas Emprego API", version="1.0")
 * @OA\SecurityScheme(type="http", securityScheme="bearerAuth", scheme="bearer", bearerFormat="JWT")
 * @OA\Server(url="http://localhost/desafio-api-restful")
 * @OA\Server(url="http://127.0.0.1:8000")
 */

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;
}
