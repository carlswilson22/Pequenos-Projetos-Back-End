CREATE DATABASE cadastro 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_general_ci;

USE cadastro;

CREATE TABLE pessoas (
   
    id_pessoa BIGINT AUTO_INCREMENT, 
    cpf VARCHAR(14) NOT NULL UNIQUE,
    sexo ENUM('M', 'F') NOT NULL, 
    peso DECIMAL(5,2) NOT NULL,
    altura DECIMAL(3,2) NOT NULL,
    nacionalidade VARCHAR(30) NOT NULL DEFAULT 'Brasil',
    PRIMARY KEY (id_pessoa)
);
--Adicionando coluna NOME na tabela pessoas
ALTER TABLE pessoas
ADD COLUMN nome VARCHAR(50) NOT NULL UNIQUE;

--Inserção de dados na tabela
INSERT INTO pessoas (id_pessoa, cpf, nome, sexo, peso, altura, nacionalidade) 
VALUES (DEFAULT, '111-111-111-11', 'Fulano de tal', 'M', 123.12, 1.80, DEFAULT);

--Consulta de dados
SELECT nome, cpf FROM pessoas
ORDER BY nome
LIMIT 1;

--Atualizando a coluna nacionalidade
UPDATE pessoas SET nacionalidade = 'Holandesa'
WHERE id_pessoa = 1;