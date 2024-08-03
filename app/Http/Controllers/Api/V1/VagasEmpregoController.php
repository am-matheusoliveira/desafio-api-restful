<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\JsonResponse;

/**
 * @OA\Info(title="Vagas Emprego API", version="1.0")
 * @OA\SecurityScheme(type="http", securityScheme="bearerAuth", scheme="bearer", bearerFormat="JWT")
 */

class VagasEmpregoController extends Controller
{

    /**
     * @OA\Get(
     *     path="/api/v1/buscar-vagas",     
     *     summary="Listar todas as vagas",
     *     tags={"Vagas"},
     *     security={{"bearerAuth":{}}},
     *     @OA\Response(
     *         response=200,
     *         description="Lista de todas as vagas",
     *         @OA\JsonContent(
     *             type="array",
     *             @OA\Items(
     *                 type="object",
     *                 @OA\Property(property="id", type="integer"),
     *                 @OA\Property(property="titulo", type="string"),
     *                 @OA\Property(property="descricao", type="string"),
     *                 @OA\Property(property="localizacao", type="string"),
     *                 @OA\Property(property="tipo_emprego", type="string"),
     *                 @OA\Property(property="empresa", type="string"),
     *                 @OA\Property(property="salario", type="number"),
     *                 @OA\Property(property="status_vaga", type="string"),
     *                 @OA\Property(property="numero_vagas", type="integer"),
     *                 @OA\Property(property="data_publicacao", type="string", format="date-time"),
     *                 @OA\Property(property="data_expiracao", type="string", format="date-time"),
     *                 @OA\Property(property="data_criacao", type="string", format="date-time"),
     *                 @OA\Property(property="data_atualizacao", type="string", format="date-time")
     *             )
     *         )
     *     )
     * )
     */
    public function buscar_vagas(): JsonResponse
    {
        // Consultar todos os dados da tabela vagas_emprego
        $vagas = DB::table('vagas_emprego')->get();

        // Retornar os dados em formato JSON
        return response()->json($vagas);
    }

    /**
     * @OA\Get(
     *     path="/api/v1/buscar-vaga/{id}",
     *     summary="Buscar vaga por ID",
     *     tags={"Vagas"},
     *     security={{"bearerAuth":{}}},
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Detalhes da vaga",
     *         @OA\JsonContent(
     *             type="object",
     *             @OA\Property(property="id", type="integer"),
     *             @OA\Property(property="titulo", type="string"),
     *             @OA\Property(property="descricao", type="string"),
     *             @OA\Property(property="localizacao", type="string"),
     *             @OA\Property(property="tipo_emprego", type="string"),
     *             @OA\Property(property="empresa", type="string"),
     *             @OA\Property(property="salario", type="number"),
     *             @OA\Property(property="status_vaga", type="string"),
     *             @OA\Property(property="numero_vagas", type="integer"),
     *             @OA\Property(property="data_publicacao", type="string", format="date-time"),
     *             @OA\Property(property="data_expiracao", type="string", format="date-time"),
     *             @OA\Property(property="data_criacao", type="string", format="date-time"),
     *             @OA\Property(property="data_atualizacao", type="string", format="date-time")
     *         )
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Vaga não encontrada"
     *     )
     * )
     */  
    public function buscar_vaga($id): JsonResponse
    {
        // Consultar uma vaga específica com base no ID
        $vaga = DB::table('vagas_emprego')->where('id', $id)->first();

        // Verificar se a vaga foi encontrada
        if ($vaga) {
            // Retornar os dados em formato JSON
            return response()->json($vaga);
        } else {
            // Retornar um erro 404 se a vaga não for encontrada
            return response()->json(['message' => 'Vaga não encontrada'], 404);
        }
    }
}