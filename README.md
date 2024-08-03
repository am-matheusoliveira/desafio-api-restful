# API RESTful com PHP e Laravel

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
git clone <URL_DO_REPOSITORIO>
cd <NOME_DO_REPOSITORIO>
```
### 2. Instalar Dependências
```
composer install
```
### 3. Configurar o Arquivo `.env`
Renomeie o arquivo `.env.example` para `.env` e configure as variáveis de ambiente, especialmente as relacionadas ao banco de dados e JWT.
```
cp .env.example .env
```
Edite o arquivo `.env` para incluir suas configurações de banco de dados e JWT. Aqui está um exemplo:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=seu_banco_de_dados
DB_USERNAME=seu_usuario
DB_PASSWORD=sua_senha

JWT_SECRET=sua_chave_secreta
```
### 4. Gerar a Chave da Aplicação
```
php artisan key:generate
```
### 5. Migrar o Banco de Dados
```
php artisan serve
```
### 6. Executar o Servidor de Desenvolvimento
```
php artisan serve
```
A aplicação estará disponível em `http://localhost:8000`.

## Endpoints da API
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



