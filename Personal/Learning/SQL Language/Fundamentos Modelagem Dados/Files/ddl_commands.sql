-- Criar tabela
CREATE TABLE tb_ddl(
	matricula 	INT PRIMARY KEY,
	nome		VARCHAR(100),
	sexo		CHAR(1)
)


-- Alterar tabela
ALTER TABLE tb_ddl
ALTER COLUMN matricula TYPE SMALLINT

-- Adicionar Colunas na tabela
ALTER TABLE tb_ddL
ADD COLUMN dt_nascimento DATE, 
ADD COLUMN cpf CHAR(11)

-- Rename Column
ALTER TABLE tb_ddl RENAME COLUMN x TO y

DROP TABLE tb_ddl

DROP DATABASE db_ddl