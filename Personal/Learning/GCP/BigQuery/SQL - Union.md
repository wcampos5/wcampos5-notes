curso-completo-sql-para-analise-de-dados[^1] 
Ref[^2]
xx'
***
#sql #union #unionall 


>[!quote] 🐍 *IMPORTANTE*
>**UNION** é para **linhas**
>**JOIN** é para **colunas**


#### Union All
#unionall
Considerando linhas com os mesmo dados e tipos...

Une os conjuntos A & B, ==DUPLICANDO== os dados que existam em ambos os conjuntos de dados

```SQL
SELECT
	id,
	name,
	surname
FROM <prj.dataset.table_x>
WHERE id BETWEEN 1 AND 5

JOIN ALL

SELECT
	id,
	name,
	surname
FROM <prj.dataset.other_table>
WHERE id BETWEEN 3 AND 6
```


#### Union Distinct
#uniondistinct
Une os conjuntos A & B, ==REMOVENDO DUPLICIDADES== os dados que existam em ambos os conjuntos de dados

>[!error] IMPORTANTE
> DISTINCT  considera a tupla como um todo.
> Qualquer dado diferente entre as linhas a serem unidas irá gerar duplicata.

```SQL
SELECT
	id,
	name,
	surname
FROM <prj.dataset.table_x>
WHERE id BETWEEN 1 AND 5

JOIN DISTINCT

SELECT
	id,
	name,
	surname
FROM <prj.dataset.other_table>
WHERE id BETWEEN 3 AND 6
```



***
[[]] | [[]]

***
[^1]: [curso-completo-sql-para-analise-de-dados](https://ford.udemy.com/course/curso-completo-sql-para-analise-de-dados/learn/lecture/36624408#overview)
[^2]: [Ref](#)

