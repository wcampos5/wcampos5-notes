-- Criando chave estrangeira na criação d tabela com constrain
-- Tabela com a chave primaria
CREATE TABLE tb_marca (
	cod INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome VARCHAR(50)
)

-- Usando a chave primaria como chave estrangeira em outra tabela
CREATE TABLE tb_carro (
	placa VARCHAR(6) PRIMARY KEY,
	modelo VARCHAR(50),
	cod_marca INT,
	CONSTRAINT fk_marca
		FOREIGN KEY(cod_marca)
			REFERENCES tb_marca(cod)
)

-- Removendo fk
ALTER TABLE tb_fk_carro
DROP CONSTRAINT fk_marca


-- Adicionando a Foreign Key depois de ccriada a tabela

ALTER TABLE tb_carro
ADD CONSTRAINT fk_marca
	FOREIGN KEY(cod_marca)
		REFERENCES tb_marca(cod)


-- Lista Tabelas
SELECT * FROM tb_fk_marca
SELECT * FROM tb_fk_carro

DROP TABLE tb_marca
DROP TABLE tb_carro