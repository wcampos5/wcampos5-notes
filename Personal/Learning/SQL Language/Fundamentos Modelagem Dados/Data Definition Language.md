Modelagem de Dados[^1] 
DDL[^2]
xx'
***
#sql #ddl #ddlcommands

#### SQL DDL Scripting
:fas_file: ![[ddl_commands.sql]]


#### CREATE
---
#create   
Sintaxe
```sql
CREATE object object_name;
```

###### Criando um banco de dados
#sqlcreatedatabase

``CREATE DATABASE bd_ddl``

###### Criar tabela
#sqlcreatetable

Sintaxe:

Nova tabela sem dados

```SQL
CREATE TABLE OR REPLACE tb_name(
	field1 type options,
	field2 type options,
	field3 type options
);
```

Nova tabela usando outra pra popular os dados
#createtableInsertinto #createtableselect
```SQL
CREATE TABLE OR REPLACE AS tb_name(
	SELECT
		<field1> AS <fieldx1_alias>,
		<field2> AS <fieldx2_alias>,
		<fieldn> AS <fieldxn_alias>
	FROM <prj.dataset.table1_name>
	GROUP BY <field_alias>
	ORDER BY <field>
);
```





Criando uma tabela
```sql
CREATE TABLE tb_ddl(
matricula INT PRIMARY KEY,
nome VARCHAR(100),
sexo CHAR(1));
```

###### Criar um usuário #createuser
```sql
--SQL
CREATE USER user_x WITHOUT LOGIN
```

```sql
--- Postgres
CREATE ROLE user_x WITH
	NOLOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1;
```

#### USE
---
Carregando  o banco de dados no contexto da janela de consulta

Sintaxe:
```sql
USE bd_ddl
```



#### ALTER
---
#altertable
Sintaxe:
```sql
ALTER OBJECT object_name;
```

##### Exemplos

Adicionar um novo campo a tabela
```sql
ALTER TABLE tb_ddl
ADD dt_nascimento DATETIME, cpf CHAR(11)
```
```sql
-- Postgres
ALTER TABLE tb_ddl
ADD COLUMN dt_nascimento DATE, 
ADD COLUMN cpf CHAR(11)
```


Alterando o tipo de dados de uma determinada tabela.
```sql
ALTER TABLE tb_ddl
ALTER COLUMN dt_nascimento DATE
```

```sql
--Postgres
ALTER TABLE tb_ddl
ALTER COLUMN dt_nascimento TYPE DATE
```
>[!info] Add TYPE for Postgres

Alter a tabela, excluindo um campo
```sql
ALTER TABLE tb_ddl
DROP COLUMN dt_nascimento
```


Renomeando uma coluna
```sql
-- Postgres
ALTER TABLE tb_ddl RENAME COLUMN x TO y
```



#### TRUNCATE
---
#truncate
Apaga todos os registros da tabela, reiniciando os indices automaticos

>[!error] TRUNCATE NÃO tem a clausula WHERE

Sintaxe:
```sql
TRUNCATE OBJECT object_name;
```


#### DROP
---
#drop #droptable 
Apaga OBJETOS DO banco de dados

Sintaxe:
```sql
DROP OBJECT object_name;
```

>[!warning] Não apaga quando?
>Existir ligação de  chave estrangeira
>

##### Exemplos

```sql
DROP TABLE tb_ddl
```
```sql
DROP VIEW vw_test
```
```sql
DROP FUNCTION fn_test
```
```sql
DROP PROCEDURE usp_test
```
```sql
DROP TRIGGER tr_test
```

***
[[SQL]] | [[Data Manipulation Language|DML]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/12528090#overview)
[^2]: [DDL](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077776#questions)

