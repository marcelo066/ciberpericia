-- ============================================================================
-- Titulo: O Hacker da Rota
-- Banco de Dados: MariaDB
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Inicio: Script inicia da Ciberpericia
-- O que fazer: Rodar cada query no Maria BD ou Similar
-- ----------------------------------------------------------------------------
SQL
CREATE DATABASE CacaAoTesouro;
USE CacaAoTesouro;

-- Tabela P (Suspeitos)
CREATE TABLE P_Suspeitos (
    id_suspeito INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(50),
    nivel_acesso INT,
    status_conta VARCHAR(20)
);

-- Tabela P2 (Pistas)
CREATE TABLE P2_Pistas (
    id_pista INT PRIMARY KEY,
    descricao TEXT,
    id_suspeito INT,
    nivel_perigo INT,
    data_registro DATE,
    FOREIGN KEY (id_suspeito) REFERENCES P_Suspeitos(id_suspeito)
);

INSERT INTO P_Suspeitos VALUES 
(1, 'Agente Alpha', 'TI', 5, 'Ativo'),
(2, 'Agente Beta', 'Logística', 3, 'Inativo'),
(3, 'Agente Gama', 'Financeiro', 4, 'Ativo'),
(4, 'Agente Delta', 'TI', 2, 'Suspenso');

INSERT INTO P2_Pistas VALUES 
(101, 'Acesso fora do horario no servidor principal.', 1, 8, '2026-10-01'),
(102, 'Transferência de dados não autorizada (FALSA).', 2, 2, '2026-10-02'),
(103, 'Criptografia alterada no banco de senhas.', 1, 9, '2026-10-03'),
(104, 'Login em IP estrangeiro.', 3, 5, '2026-10-04'),
(105, 'Registro corrompido - precisa de update.', 4, NULL, '2026-10-05');
