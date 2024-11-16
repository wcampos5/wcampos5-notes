Modelagem de Dados[^1] 
DML[^2]
xx'
***
#sql #dml #dmlcommands

#### SQL DML Scripting
:fas_file:![[dml_commands.sql]]

#### INSERT
---
#insert 

##### Informando os campos da tabela

```sql
INSERT INTO table_name (field1, field2...)
VALUES (value1, value2...),
		(value1, value2...)
```

##### ==NÃO INFORMANDO== os campos da tabela
>[!warning] MANDATÓRIO  seguir a ordem  de criação dos campos

```sql
INSERT INTO table_name
VALUES (value1, value2...),
		(value1, value2...)
```


#### UPDATE
---
#update

```sql
UPDATE table_name
SET field1 = new_value
WHERE field1 = 0
```
>[!error] SEMPRE utilizar a clausula **WHERE** para UPDATE e DELETE.


#### DELETE
---
#update

```sql
DELETE FROM table_name
WHERE field1 = 0
AND id = 3
```
>[!error] SEMPRE utilizar a clausula **WHERE** para UPDATE e DELETE


***
[[Data Definition Language|DDL]] | [[Data Query Language|DQL]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/12528090#overview)
[^2]: [DML](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077782#questions)

