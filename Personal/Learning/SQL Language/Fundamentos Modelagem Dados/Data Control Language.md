Modelagem de Dados[^1] 
DCL[^2]
xx'
***
#sql #dcl #dclcommands

Commandos para controle de Dados
#### SQL DTL Scripting
:fas_file:![[dml_commands.sql]]
![[dtl_commands.sql]]


#### Privilégios para os camandos DCL
#privileges

| Provilégio | Descrição                                                                   |
| ---------- | --------------------------------------------------------------------------- |
| SELECT     | Executar instruções SELECT na tabela                                        |
| INSERT     | Executar instruções INSERT na tabela                                        |
| UPDATE     | Executar instruções UPDATE na tabela                                        |
| DELETE     | Executar instruções DELETE na tabela                                        |
| REFERENCES | Criar restrição que se refere a tabela                                      |
| ALTER      | Capacidade de alterar definição da tabela                                   |
| ALL        | Concede apenas as permissões ANSI-92<br>INSERT, UPDATE, DELETE e REFERENCES |



#### GRANT
---
#grant

```sql
GRANT <privilegy> ON object TO user
```

##### Changing User
#user #changeuser #userchange #switchuser
SQL Server
```sql
EXECUTE AS USER = 'user_x'
-- reset user
REVERT
```

Postgres
```sql
SET ROLE = 'user_x'
-- Reset user
RESET ROLE
```


##### Exemplo

###### Granting privileges
```sql
---SQL and Postgres
GRANT SELECT, INSERT, UPDATE ON tb_dml TO user_x
```

Functional Test
```sql
--- Postgres
-- Muda o Role/user
SET ROLE user_x

BEGIN;
	UPDATE tb_dml
	SET cpf = '12345678-55'
	WHERE matricula = 4;

	SELECT * FROM tb_dml
-- ROLLBACK
-- COMMIT
END

RESET ROLE
```


#### REVOKE
---
#revoke
Remove certas permissões previamente concedidas

```sql
-- Postgres
REVOKE UPDATE ON tb_dml FROM user_x
```

Any tentative of update to this user will return:
``ERROR: permission denied for table tb_dml SQL state: 42501``




#### DENY
---
#revoke
Remove certas permissões previamente concedidas

```sql
-- SQL Server
DENY INSERT ON tb_dml FROM user_x
```

>[!error] Postgres DO NOT have DENY ACL´s
>É necessario usar o REVOKE removendo todos os acessos e liberando somente o desejado
>```
>```sql
REVOKE ALL ON tb_dml FROM USER user_x;
GRANT SELECT ON tb_dml TO USER user_x;


***
[[Data Transaction Language|DTL]] | [[Constrains]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/12528090#overview)
[^2]: [DCL](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077786#questions)

