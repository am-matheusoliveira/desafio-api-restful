<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Tests\TestCase;
use Illuminate\Support\Facades\DB;

class VagasEmpregoTest extends TestCase
{
    use DatabaseTransactions;
    use WithoutMiddleware;

    /**
     * Testa a listagem de todas as vagas.
     *
     * @return void
     */
    public function test_list_all_vagas()
    {
        
        // Limpa a tabela antes de executar o teste
        DB::table('vagas_emprego')->truncate();

        // Insere uma vaga para teste
        DB::table('vagas_emprego')->insert([
            'id' => 1,
            'titulo' => 'Desenvolvedor Laravel',
            'descricao' => 'Trabalhar com Laravel.',
            'localizacao' => 'Rio de Janeiro',
            'tipo_emprego' => 'Meio Período',
            'empresa' => 'Empresa Y',
            'salario' => 3000,
            'status_vaga' => 'Aberta',
            'numero_vagas' => 1,
            'data_publicacao' => now(),
            'data_expiracao' => now()->addMonth(),
            'data_criacao' => now(),
            'data_atualizacao' => now(),
        ]);
        
        // Faz uma requisição GET para a rota de listagem de vagas
        $response = $this->get('/api/v1/buscar-vagas');

        // Verifica se a resposta está correta
        $response->assertStatus(200);
        $response->assertJsonCount(1);

    }

    /**
     * Testa a listagem de uma vaga específica pelo ID.
     *
     * @return void
     */
    public function test_show_vaga_by_id()
    {    
        // ID da vaga
        $id = 1;

        // Consultar uma vaga específica com base no ID
        $vaga = DB::table('vagas_emprego')->where('id', $id)->first();

        if($vaga){

            // Faz uma requisição GET para a rota de exibição de uma vaga específica
            $response = $this->get('/api/v1/buscar-vaga/'. $vaga->id);

            // Verifica se a resposta está correta
            $response->assertStatus(200);
            $response->assertJson([ 'id' => $vaga->id ]);

        }else{
            // URI - vaga não encontrada
            $response = $this->get('/api/v1/buscar-vaga/999');

            // Verifica se a resposta está correta
            $response->assertStatus(404);
            $response->assertJson([ 'message' => 'Vaga não encontrada' ]);
        }
    }

    /**
     * Testa a exibição de uma vaga que não existe.
     *
     * @return void
     */
    public function test_vaga_not_exists()
    {
        // Faz uma requisição GET para uma vaga que não existe
        $response = $this->get('/api/v1/buscar-vaga/999');

        // Verifica se a resposta está correta
        $response->assertStatus(404);
        $response->assertJson([ 'message' => 'Vaga não encontrada' ]);
    }
}
