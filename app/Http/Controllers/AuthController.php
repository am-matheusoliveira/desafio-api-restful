<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
{

    /**
     * @OA\Post(
     *     path="/api/user/register",
     *     summary="Registrar um novo usuário",
     *     tags={"Auth"},
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"name","email","username","password"},
     *             @OA\Property(property="name", type="string", example="Your Name"),
     *             @OA\Property(property="email", type="string", format="email", example="john.doe@example.com"),
     *             @OA\Property(property="username", type="string", format="text", example="Your username"),
     *             @OA\Property(property="password", type="string", format="password", example="password"),
     *         ),
     *     ),
     *     @OA\Response(
     *         response=201,
     *         description="Usuário criado com sucesso",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="Usuário criado com sucesso")
     *         ),
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Bad request",
     *         @OA\JsonContent(
     *             @OA\Property(property="error", type="string", example="Dados de entrada inválidos")
     *         ),
     *     ),
     * )
     */

    // Criando um novo usuário
    public function register(Request $request)
    {   
        // Validações dos campos
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'username' => 'required|string|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);

        // Se tiver erro em alguma validação - retornar uma mensagem
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        // Criando o novo usuário
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,
            'password' => Hash::make($request->password),
        ]);

        // Criando o Token
        $token = JWTAuth::fromUser($user);

        // Tempo de expiração em minutos
        $ttl = config('jwt.ttl');

        // Retorno do token e do tempo de expiração em segundos
        return response()->json([
            'user' => $user,
            'token' => $token,
            'expires_in' => $ttl * 60 // Converte minutos para segundos
        ], 200);
    }
    
    /**
     * @OA\Post(
     *     path="/api/user/login",
     *     summary="Login - usuário",
     *     tags={"Auth"},
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"email","password"},
     *             @OA\Property(property="email", type="string", format="email", example="john.doe@example.com"),
     *             @OA\Property(property="password", type="string", format="password", example="password"),
     *         ),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Usuário efetuou login com sucesso",
     *         @OA\JsonContent(
     *             @OA\Property(property="access_token", type="string", example="your-access-token"),
     *             @OA\Property(property="token_type", type="string", example="bearer"),
     *             @OA\Property(property="expires_in", type="integer", example=3600),
     *         ),
     *     ),
     *     @OA\Response(
     *         response=401,
     *         description="Não autorizado",
     *         @OA\JsonContent(
     *             @OA\Property(property="error", type="string", example="Não autorizado")
     *         ),
     *     ),
     * )
     */    
    
    // Realizando o Login do Usuário
    public function login(Request $request)
    {   
        // Credenciais
        $credentials = $request->only('email', 'password');

        // Tratamento de Erros
        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'Não autorizado'], 401);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'Não foi possível criar o token'], 500);
        }

        // Tempo de expiração em minutos
        $ttl = config('jwt.ttl');

        // Retorno do token e do tempo de expiração em segundos
        return response()->json([
            'token' => $token,
            'expires_in' => $ttl * 60 // Converte minutos para segundos
        ], 200);
    }
    
    /**
     * @OA\Post(
     *     path="/api/user/logout",
     *     summary="Logout - usuário",
     *     tags={"Auth"},
     *     security={{"bearerAuth":{}}},
     *     @OA\Response(
     *         response=200,
     *         description="Usuário desconectado com sucesso",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="Deslogado com sucesso")
     *         ),
     *     ),
     *     @OA\Response(
     *         response=401,
     *         description="Não autorizado",
     *         @OA\JsonContent(
     *             @OA\Property(property="error", type="string", example="Não autorizado")
     *         ),
     *     ),
     * )
     */

    // Logout da Aplicação - passando o Token Criado
    public function logout()
    {
        JWTAuth::invalidate(JWTAuth::getToken());
        return response()->json(['message' => 'Saiu com sucesso']);
    }
}