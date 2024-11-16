Modelagem de Dados[^1] 
SQL[^2]
xx'
***
#sql 

>[!info] SQL
>Linguagem declarativa padrão para banco de dados relacional
>###### SQL ANSI
>É o SQL Padrão e pode ser migrado sem mudanças  estrututurais principais.

#### Variações do **SQL ANSI**
#sqlansi

- **SQL Server**
	Transact-SQL

- **Oracle**
	PL/SQL
	
- **PostgresSQL**
	PL/pgSQL


#### Grupos de Commandos
#sqlcmdgrp #sqlcommandgroups

##### DDL :luc_arrow_big_right: Data Definition Language

---
#ddl [[Data Definition Language|DDL Commands]]
Manipula objetos do Banco de Dados
[[Data Definition Language#USE|USE]], [[Data Definition Language#CREATE|CREATE]], [[Data Definition Language#ALTER|ALTER]], [[Data Definition Language#DROP|DROP]], [[Data Definition Language#TRUNCATE|TRUNCATE]]

##### Comandos
#ddlcmds
``USE``, ``CREATE``, ``ALTER``, 
``DROP`` :luc_arrow_right: 
Apaga objetos ao contrario do DELETE (DML) que apaga registros

``TRUNCATE`` :luc_arrow_right: 
Apaga todos os registros de uma tabela, **reiniciando o indice das colunas** auto incremanetais
 - Redefine os valores de ID enquanto DELETE não.
 - Não aciona os TRIGGERS
 - Mais rápido, menos uso de logs de transaction
 - Não é possível usar quando:
	 - Tabela tem referencia por FK
	 - Tabela usadas na replicação
	 - Visualizações indexadas (Views)





##### DML
---
[[Data Manipulation Language#INSERT|INSERT]]
[[Data Manipulation Language#INSERT|INSERT]]
[[Data Manipulation Language#DELETE|DELETE]]
``MERGE`` :luc_arrow_right: #sqlmerge
Inserção, atualização ou exclusão em uma tabela de destino, com base nos resultados de uma junção com uma tabela de origem.

##### DCL :luc_arrow_big_right: Data Control Language
---
#dcl 
Controla a segurança dos dados
[[Data Control Language#GRANT|GRANT]]
[[Data Control Language#REVOKE|REVOKE]]
[[Data Control Language#DENY|DENY]]

##### DTL :luc_arrow_big_right: Data Transaction Language
---
#dtl
Manipulação de Transações
[[Data Transaction Language#BEGIN TRAN BEGIN TRANSACTION|BEGIN]], ``TRANSACTION``, ``COMMIT``, ``ROOLBACK``

>[!error] AVISO
>- Alguns Bancos de Dados são **auto-commit**, uma vez executados os comandos DML, são automaticamente gravados.
>- Uma vez inicializado o camando ``BEGIN TRAN``, **É MANDATORIO** finalizar com ``COMMIT`` ou ``ROLLBACK``
>- Alguns sistemas travam quando uma transação é aberta e não finallizada.


```sql
BEGIN TRAN
BEGIN TRANSACTION
```
Inicia uma transação

##### DQL :luc_arrow_big_right: Data Query Language
---
[[Data Query Language#SELECT|SELECT]]

---

##### Dicas
#sqlclues #sqldicas
- Padronizar as nomenclaturas e codificação
- String e Datas são delimitados por aspas simples
###### Comentários
_--_        :luc_arrow_right:  Linha
/* */    :luc_arrow_right:  Bloco

###### Formato Data
Depende de como o Banco de Dados foi configurado
###### Virgula
Separador de campos

###### Decimal Place
Utilizar ponto (.)

###### Asterisco \(\*\)
No ``SELECT`` significa que todos os dados da tabela serão exibidos


***
[[Tipos de Dados]] | [[Data Definition Language]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/12528090#overview)
[^2]: [SQL](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077772#questions)

