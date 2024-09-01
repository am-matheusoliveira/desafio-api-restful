
-- CRIANDO O BANCO DE DADOS
DROP DATABASE IF EXISTS database_vagas;

CREATE DATABASE database_vagas
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE database_vagas;


-- CRIANDO TABELA
CREATE TABLE vagas_emprego (
    id               INT AUTO_INCREMENT PRIMARY KEY,
    titulo           VARCHAR(255) NOT NULL,
    descricao        TEXT NOT NULL,
    localizacao      VARCHAR(255) NOT NULL,
    tipo_emprego     VARCHAR(50) NOT NULL,
    empresa          VARCHAR(255) NOT NULL,
    salario          DECIMAL(10, 2),
    status_vaga      VARCHAR(50) NOT NULL,
    numero_vagas     INT,
    data_publicacao  DATE NOT NULL,
    data_expiracao   DATE NOT NULL,
    data_criacao     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP
);

-- INSERÇÃO DE DADOS
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Desenvolvedor Front-end', 'Responsável pelo desenvolvimento e manutenção do front-end de aplicações web.', 'São Paulo, SP', 'CLT', 'TechSolutions', 8000.00, 'Aberta', 2, '2024-08-01', '2024-10-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Analista de Marketing', 'Planejamento e execução de campanhas de marketing digital.', 'Rio de Janeiro, RJ', 'PJ', 'MarketingPro', 6000.00, 'Aberta', 1, '2024-08-02', '2024-09-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Gerente de Projetos', 'Gerenciamento de projetos e coordenação de equipe.', 'Belo Horizonte, MG', 'CLT', 'ProjectMasters', 12000.00, 'Fechada', 3, '2024-07-15', '2024-08-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Designer Gráfico', 'Criação de peças gráficas e visuais para campanhas e materiais promocionais.', 'Curitiba, PR', 'Freelancer', 'Designs4U', 4500.00, 'Aberta', 5, '2024-08-05', '2024-11-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Desenvolvedor Back-end', 'Desenvolvimento de funcionalidades e integração de sistemas back-end.', 'Porto Alegre, RS', 'CLT', 'DevWorks', 9500.00, 'Aberta', 2, '2024-08-07', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Consultor de Vendas', 'Atendimento ao cliente e prospecção de novos negócios.', 'Fortaleza, CE', 'CLT', 'SalesConsulting', 7000.00, 'Aberta', 4, '2024-08-12', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Especialista em SEO', 'Otimização de sites para motores de busca.', 'São Paulo, SP', 'PJ', 'SEOExperts', 8000.00, 'Aberta', 3, '2024-08-14', '2024-10-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Engenheiro de Software', 'Desenvolvimento e manutenção de software para diferentes plataformas.', 'Campinas, SP', 'CLT', 'SoftTech', 10000.00, 'Aberta', 3, '2024-08-16', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Analista de Sistemas', 'Análise e especificação de sistemas e requisitos.', 'Brasília, DF', 'CLT', 'SystemAnalysts', 7500.00, 'Aberta', 2, '2024-08-18', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Diretor de Operações', 'Supervisão das operações diárias e estratégias de negócios.', 'São Paulo, SP', 'CLT', 'BusinessDirectors', 15000.00, 'Em andamento', 1, '2024-08-20', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Desenvolvedor Mobile', 'Desenvolvimento de aplicativos móveis para Android e iOS.', 'Rio de Janeiro, RJ', 'Freelancer', 'MobileDev', 7000.00, 'Aberta', 2, '2024-08-22', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Designer UX/UI', 'Criação de interfaces e experiências do usuário para aplicativos.', 'Salvador, BA', 'Freelancer', 'UXDesigns', 6000.00, 'Aberta', 2, '2024-08-28', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Coordenador de TI', 'Coordenação de equipe de TI e gerenciamento de infraestrutura.', 'Salvador, BA', 'CLT', 'ITManagement', 11000.00, 'Em andamento', 1, '2024-08-10', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Assistente Administrativo', 'Apoio administrativo e organização de documentos.', 'Recife, PE', 'CLT', 'ProjectMasters', 4000.00, 'Fechada', 1, '2024-07-20', '2024-08-31', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Auxiliar de Logística', 'Apoio nas atividades de logística e controle de estoque.', 'Belo Horizonte, MG', 'CLT', 'DevWorks', 3500.00, 'Aberta', 5, '2024-08-24', '2024-09-30', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Analista de Recursos Humanos', 'Gerenciamento de processos de recrutamento e seleção.', 'Curitiba, PR', 'CLT', 'Designs4U', 6500.00, 'Fechada', 1, '2024-07-25', '2024-08-31', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Técnico de Suporte', 'Suporte técnico e resolução de problemas de TI.', 'Porto Alegre, RS', 'CLT', 'MobileDev', 5000.00, 'Aberta', 3, '2024-08-26', '2024-10-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Analista de Dados', 'Análise de dados e geração de relatórios.', 'Fortaleza, CE', 'CLT', 'SoftTech', 7000.00, 'Aberta', 1, '2024-08-30', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Gestor de Projetos', 'Gerenciamento e planejamento de projetos de tecnologia.', 'São Paulo, SP', 'CLT', 'TechSolutions', 12000.00, 'Em andamento', 2, '2024-09-01', '2024-11-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Administrador de Banco de Dados', 'Administração e manutenção de bancos de dados.', 'Rio de Janeiro, RJ', 'CLT', 'BusinessDirectors', 9000.00, 'Aberta', 3, '2024-09-03', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Gerente de TI', 'Gerenciamento da equipe de TI e projetos tecnológicos.', 'Belo Horizonte, MG', 'CLT', 'MarketingPro', 11000.00, 'Fechada', 1, '2024-09-05', '2024-10-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Consultor de Tecnologia', 'Consultoria e suporte em soluções tecnológicas.', 'Porto Alegre, RS', 'Freelancer', 'DevWorks', 7500.00, 'Aberta', 2, '2024-09-10', '2024-10-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Coordenador de Marketing', 'Coordenação de campanhas e estratégias de marketing.', 'Salvador, BA', 'CLT', 'SystemAnalysts', 8500.00, 'Em andamento', 3, '2024-09-12', '2024-10-31', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Analista de Qualidade', 'Teste e garantia de qualidade de software.', 'Fortaleza, CE', 'CLT', 'UXDesigns', 6000.00, 'Aberta', 2, '2024-09-14', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Desenvolvedor Full Stack', 'Desenvolvimento tanto do front-end quanto do back-end de aplicações.', 'São Paulo, SP', 'CLT', 'SoftTech', 11000.00, 'Aberta', 3, '2024-09-16', '2024-10-31', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Engenheiro de Dados', 'Criação e manutenção de pipelines de dados.', 'Rio de Janeiro, RJ', 'CLT', 'MobileDev', 9500.00, 'Fechada', 1, '2024-09-18', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Especialista em Redes', 'Gerenciamento e configuração de redes de computadores.', 'Curitiba, PR', 'CLT', 'MarketingPro', 8000.00, 'Aberta', 4, '2024-09-07', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Desenvolvedor Web', 'Desenvolvimento de sites e aplicações web.', 'Belo Horizonte, MG', 'CLT', 'TechSolutions', 7000.00, 'Aberta', 4, '2024-09-20', '2024-11-01', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Técnico em Informática', 'Suporte e manutenção de equipamentos de informática.', 'Curitiba, PR', 'CLT', 'ITManagement', 4000.00, 'Fechada', 2, '2024-09-22', '2024-10-15', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Analista de Segurança da Informação', 'Monitoramento e proteção de dados e sistemas.', 'Porto Alegre, RS', 'CLT', 'SalesConsulting', 9000.00, 'Aberta', 1, '2024-09-24', '2024-10-31', NOW(), NOW());
INSERT INTO vagas_emprego (titulo, descricao, localizacao, tipo_emprego, empresa, salario, status_vaga, numero_vagas, data_publicacao, data_expiracao, data_criacao, data_atualizacao) VALUES ('Gerente de Recursos Humanos', 'Gerenciamento de equipe de RH e processos relacionados.', 'Salvador, BA', 'CLT', 'ITManagement', 10000.00, 'Aberta', 2, '2024-09-26', '2024-11-01', NOW(), NOW());

-- SELECT - ROTAS
-- SELECT * FROM vagas_emprego;

-- BUSCAR REGISTRO POR ID
-- SELECT * FROM vagas_emprego WHERE id = 1;