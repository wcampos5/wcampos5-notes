Modelagem de Dados[^1] 
DTL[^2]
xx'
***
#sql #dtl #dtlcommands

#### SQL DTL Scripting
:fas_file:![[dml_commands.sql]]

#### BEGIN TRAN | BEGIN TRANSACTION
---
#begin #transaction #tran

```sql
BEGIN TRAN
	SQL Commands
COMMIT OR ROLLBACK
```

##### Exemplo

```sql
---SQL
BEGIN TRAN
	UPDATE TABLE tb_dml
		SET cpf = '1974053xx99'
		WHERE matricula = 4
	SELECT * FROM tb_dml 
		WHERE matricula = 4
ROLLBACK
```

```sql
---Postgres
BEGIN;
	UPDATE tb_dml SET cpf = '12345678-44'
	WHERE matricula = 4;
	
	SELECT * FROM tb_dml
	WHERE matricula = 4;
--ROLLBACK
--COMMIT
END
```

After that we can use
``ROLLBACK`` para retornar a transação ou...
``COMMIT`` para efetivar as modificações




***
[[Data Query Language|DQL]] | [[Data Control Language|DCL]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/12528090#overview)
[^2]: [DTL](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077792#questions)

