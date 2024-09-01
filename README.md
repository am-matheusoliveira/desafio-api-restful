# API RESTful com PHP Laravel e MySQL

Este projeto é uma API RESTful desenvolvida com PHP e Laravel para fornecer e receber informações de um banco de dados MySQL. A API inclui autenticação JWT para segurança e está documentada usando o Swagger.

### Ferramentas
* PHP 8.0
* Composer
* MySQL
* Laravel 11
* Token JWT
* Swagger JS
  
### Instalação
Siga os passos abaixo para configurar e executar o projeto em sua máquina local.
### 1. Clonar o Repositório
```
git clone https://github.com/am-matheusoliveira/desafio-back-end-api.git
cd desafio-back-end-api
```
### 2. Instalar Dependências
```
composer install
```
### 3. Configurar o Arquivo `.env`
Crie um arquivo `.env` a partir do `.env.example` e configure as variáveis de ambiente.</br>
```
cp .env.example .env
```
Edite o arquivo `.env` para incluir suas configurações de banco de dados e JWT, use este exemplo:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=seu_banco_de_dados - para este aplicativo o nome é: database_vagas
DB_USERNAME=seu_usuario - para este aplicativo o usuário é: root
DB_PASSWORD=sua_senha - para este aplicativo a senha é: 

JWT_SECRET=sua_chave_secreta
```
### 4. Gerar a Chave da Aplicação
```
php artisan key:generate
```
### 5. Gerar o JWT_SECRET
Para gerar o `JWT_SECRET`, execute o seguinte comando:
```
php artisan jwt:secret
```
### 6. Criar o Banco de Dados - Sistema
Execute o script SQL que esta na pasta `database-app/script-database.sql` para criar o banco de dados e as tabelas necessárias, caso esteja no Linux:
```
mysql -u seu_usuario -p sua_senha seu_banco_de_dados < database-app/script-database.sql
```
Para realizar esta tarefa no Windows abra o seu SGBD do MySQL e execute o script SQL mencionado acima.
### 7. Migrar o Banco de Dados - Tabelas do Laravel
```
php artisan migrate
```
### 8. Executar o Servidor de Desenvolvimento
Caso não esteja usando um Servidor Web como o Apache ou Nginx, execute o comando:
```
php artisan serve
```
A aplicação estará disponível em `http://localhost:8000`.<br>
Ou `http://localhost/application-name/`, caso esteja em um servidor web apache ou nginx.

### Endpoints da API
A API possui os seguintes endpoints:
### Listar Todos os Registros
```
GET /api/v1/buscar-vagas
```
### Buscar Registro Específico
```
GET /api/v1/burcar-vaga/{id}
```
### Registrar Novo Usuário
```
POST /api/user/register
```
### Login do Usuário
```
POST /api/user/login
```
### Logout do Usuário
```
POST /api/user/logout
```

### Autenticação

A API usa JWT para autenticar as solicitações dos usuários. Para acessar os endpoints protegidos, você deve incluir o token JWT no cabeçalho da solicitação.

### Obter Token JWT

Para obter o Token JWT navegue ate:<br>
Servidor Web Laravel: `http://localhost:8000/api/documentation`<br>
Seu Servidor Web: `http://localhost/application-name/api/documentation`<br>

Excute a API: `/api/user/login`, passando um Json com Email e Senha:<br>
```
{
  "email": "username@email.com",
  "password": "password"
}
```
Após fazer login, você receberá um token JWT que deve ser usado nas solicitações subsequentes.

### Incluir Token JWT nas Solicitações
Clique no ícone de cadeado (Authorize) no canto superior direito do Swagger UI e inclua o token JWT.

### Testes de Integração
O projeto inclui testes de integração para os endpoints de `api/v1/buscar-vagas` e `api/v1/buscar-vaga/{id}`. Para executar os testes, use os seguintes comandos:
```
php artisan test --filter=VagasEmpregoTest::test_list_all_vagas
```
```
php artisan test --filter=VagasEmpregoTest::test_show_vaga_by_id
```
```
php artisan test --filter=VagasEmpregoTest::test_vaga_not_exists
```
```
php artisan test --filter=VagasEmpregoTest
```

### Documentação da API
A documentação da API está disponível via Swagger. Para acessar a documentação, navegue até:<br>
Servidor Web Laravel: `http://localhost:8000/api/documentation`<br>
Seu Servidor Web: `http://localhost/application-name/api/documentation`

### Conclusão

Este projeto demonstra minhas habilidades no desenvolvimento de API RESTful com PHP e Laravel, incluindo:
* Desenvolvimento de endpoints para buscar registros
* Autenticação JWT
* Respostas em formato JSON
* Documentação com Swagger
* Testes de integração
---
Sinta-se à vontade para explorar o código e fazer melhorias.<br>
Se tiver alguma dúvida, entre em contato.

