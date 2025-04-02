curso-completo-sql-para-analise-de-dados[^1] 
Ref[^2]
xx'
***
#sql #joins #join #innerjoin #intersect


>[!quote] 🐍 *IMPORTANTE*
>**JOIN** é para **colunas**
>**UNION** é para **linhas**

#### Join ou Inner Join (Interseção)

Relaciona conteudo ou as chaves que são iguais entre a tabela A e a tabela B.

![[join_inner_join_intersection.png]]


Quando não especificado o join refere-se ao inner join

#joinsintaxe
```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
```


#### LEFT JOIN
#leftjoin

Prioriza a tabela da esquerda, ou seja, a tabela que esta no FROM
![[left_joing.png]]


##### Com dados da interseção
```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
LEFT JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
```

##### Sem interseção
```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
LEFT JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
-- Adiciona-se a clausula WHERE
WHERE b.chave ISNULL
```



#### RIGHT JOIN
#rightjoin

Prioriza a tabela da direita, ou seja, a tabela que esta no Right Join

![[right_join.png]]


##### Com dados da interseção
```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
RIGHT JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
```

##### Sem interseção
```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
RIGHT JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
-- Adiciona-se a clausula WHERE
WHERE a.chave IS NULL
```



#### FULL JOIN
#fulljoin

Usado para juntar duas tabelas

![[full_join.png]]


```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
FULL JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
```

##### Somente a interseção entre as tabelas
Quem esteja somente em A e Somente em B

```SQL
SELECT
	<COLUNAS>
FROM tabela_a tbl_a
FULL JOIN tabela_b tbl_b ON tbl_a.chave = tbl_b.chave
WHERE tbl_a.id IS NULL OR tbl_b IS NULL
```



***
[[]] | [[]]

***
[^1]: [curso-completo-sql-para-analise-de-dados](https://ford.udemy.com/course/curso-completo-sql-para-analise-de-dados/learn/lecture/43881856#overview)
[^2]: [Ref](#)

