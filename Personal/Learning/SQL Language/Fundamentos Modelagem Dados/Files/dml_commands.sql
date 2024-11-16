-- Setup Database and Tables

--Create Database
CREATE DATABASE db_dml
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	

-- Criar tabela
CREATE TABLE tb_dml(
	matricula 	INT PRIMARY KEY,
	nome		VARCHAR(100),
	sexo		CHAR(1)
)


-- Alterar tabela
ALTER TABLE tb_dml
ALTER COLUMN matricula TYPE SMALLINT

-- Adicionar Colunas na tabela
ALTER TABLE tb_dml
ADD COLUMN dt_nascimento DATE, 
ADD COLUMN cpf CHAR(11)

-- Remover coluna sexo
ALTER TABLE tb_dml DROP COLUMN sexo

DROP TABLE tb_dml

DROP DATABASE db_dml

DROP DATABASE db_dml

----------------------------------------------------------------------
--DML Commands

-- Inserir dados
INSERT INTO tb_dml (matricula, nome, dt_nascimento, cpf)
VALUES (1, 'Pessoa_A', '2000-12-10','12345678-10'),
		(2, 'Pessoa_B', '2000-12-10', '12345678-22'),
		(3, 'Pessoa_C', '2000-01-01', '12345678-33')
		
-- Inserindo sem explicitar os campos
INSERT INTO tb_dml
VALUES (4, 'Pessoa_D', '202-01-10', '12345678-44')

UPDATE tb_dml
SET dt_nascimento = '2010-01-10'
WHERE matricula = 4
		
SELECT * FROM tb_dml	