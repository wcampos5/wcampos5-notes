Modelagem de Dados[^1] 
Constrains[^2]
Postgres Documentation[^3]
xx'
***
#sql #constrains

Finalidade: Fazer com que os campos ou atributos não recebam qualquer tipo de dado e tenham um certo nivel de validação no momento dos comandos DML.

#### SQL DTL Scripting
:fas_file:![[primarykey_sequence.sql]]

#### List de Restrições
---

| **Nome**    | **Definição**              |
| ----------- | -------------------------- |
| Primary Key | Chave primária             |
| Not Null    | Não nulo                   |
| Default     | Padrão                     |
| Foreign Key | Chave Estrangeira          |
| Unique      | Valor Único                |
| Check       | Checagem de Valor Inserido |


#### Identity
---
#identity #identityon #identityoff

Faz com que o atributo selecionado seja auto-increment
 - recomendado usar com tipo inteiro
 - Pode-se indicar o inicio e o auto increment (1,1)
	 Parametros:
		 Seed ou start
		 Increment
>[!warning] Required Constrains to IDENTITY
>Identity is automatically masked as NOT NULL,
>but no necessary unique, to do so you need assing the constrain
>PRIMARY KEY or UNIQUE

Criando uma tabela com um campo identity
```sql
-- SQl Server
CREATE TABLE tb_identity(
	codigo INT IDENTITY PRIMARY KEY,
	nome VARCHAR(50);
)
```

>[!info] IDENTITY ON/OFF
>Identity could be turned ON/OFF
>_SET IDENTITY_INSERT <table_name> ON_
>_SET IDENTITY_INSERT <table_name> OFF_



In Postgres
>[!warning] GENERATED ALWAYS x GENERATED BY DEFAULT
>GENERATED ALWAYS is more restrictive than
>GENERATED BY DEFAUL, that permits user-define take precence

```sql
-- Postgres
CREATE TABLE tb_identity(
	codigo INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome VARCHAR(50);
)
```

```sql
-- Postgres
CREATE TABLE tb_identity(
	codigo INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nome VARCHAR(50);
)
```


#### Sequence
---
#sequence [Postgres Documentation](https://www.postgresql.org/docs/17/sql-createsequence.html)

Define um novo gerador sequencial

```sql
-- Postgres
CREATE SEQUENCE serial START 101;
```



#### Primary Key
---
#primarykey 
[Postgres Foreign key](https://www.geeksforgeeks.org/postgresql-foreign-key/)

Restringe valores duplicados na tabela


#### Foreign Key - FK
---
#foreignkey #fk

Restrição que define que o atributo A faz referencia ao atributo B que é a chave em outra tabela.

- O atributo deve ter o mesmo tipo do campo referencia de sua tabela de origem.
- Requer a criação da tabela a ser referenciada esteja criada
- O registro tem que existir na tabela de origem

###### Criando a Foreign Key na criação da tabela

```sql
-- Postgres

-- Tabela com a chave primaria
CREATE TABLE tb_marca (
	cod INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	marca VARCHAR(50)
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
```

###### Removendo uma FK

```sql
-- Postgres
ALTER TABLE tb_carro
DROP CONSTRAINT fk_marca

```

Adicionando a Foreign Key após a criação da tabela

```sql
-- Postgres
ALTER TABLE tb_carro
ADD CONSTRAINT fk_marca
	FOREIGN KEY(cod_marca)
		REFERENCES tb_marca(cod)

```


>[!warning] Pontos importantes sobre FK in Postgres
>- Foreign key constraints enforce referential integrity between tables by ensuring that a column or a group of columns in the child table matches values in the parent table.
>- A single table can have multiple foreign keys, each establishing a relationship with different parent tables.
>- PostgreSQL supports several actions that can be taken when the referenced row in the parent table is deleted or updated such as CASCADE, SET NULL, SET DEFAULT, RESTRICT, NO ACTION.
>- You can specify a name for the foreign key constraint using the `CONSTRAINT` keyword. If omitted, PostgreSQL assigns an auto-generated name.
>- If **`**ON DELETE**`** or **`**ON UPDATE**`** actions are not specified, the default behavior is **`**NO ACTION**`******.****



***
[[Data Control Language|DCL]] | [[Consultas T-SQL - Script]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/12528090#overview)
[^2]: [Constrains](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19314558#questions)
[^3]: [Postgres Documentation](Documentation)