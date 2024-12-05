curso-completo-sql-para-analise-de-dados[^1] 
Ref[^2]
xx'
***
#sql #with

#### WITH

É parte do Common Expression Language (CEL) de SQl

>[!quote] WITH
>Com o resultado desta consulta faça...

#### Sintaxe
```SQL
WITH as tbl_x (
	SELECT
		<field1> AS <fieldx1_alias>,
		<field2> AS <fieldx2_alias>,
		<fieldn> AS <fieldxn_alias>
	FROM <prj.dataset.table1_name>
	GROUP BY <field_alias>
),

WITH as tbl_y (
	SELECT
		<field1> AS <fieldy1_alias>,
		<fieldn> AS <fieldy2_alias>
		<fieldn> AS <fieldyn_alias>
	FROM <prj.dataset.table2_name>
	GROUP BY <field_alias>
)

-- Main Query using prior tables

SELECT
	<x.fieldx1_alias>,
	<y.<fieldy1_alias>,
	<y.fieldyn_alias>
FROM tbl_x AS x
JOIN tbl_y AS b ON x.fieldx1_alias = x.fieldy1_alias
WHERE ...
ORDER BY ... ASC
```


##### Exemplo:
Calcular quantos pedidos por dia por consumidor

```SQL
WITH tbl1 as (
  SELECT
    COUNT(DISTINCT customer_id) AS compradores,
    DATE(order_date) as dia
  FROM `northwind.orders`
  GROUP BY dia
),

tbl2 as (
  SELECT 
    COUNT(DISTINCT order_id) as compras,
    DATE(order_date) as dia
  FROM `northwind.orders`
  GROUP BY dia
)

SELECT
  compradores,
  compras,
  a.dia
FROM tbl1 a
JOIN tbl2 b ON a.dia = b.dia
WHERE a.dia BETWEEN "2020-10-01" AND "2020-11-30"
ORDER BY a.dia
```

![[query_purchase_by_day_per_user.png]]




***
[[]] | [[]]

***
[^1]: [curso-completo-sql-para-analise-de-dados](https://ford.udemy.com/course/curso-completo-sql-para-analise-de-dados/learn/lecture/36624736#overview)
[^2]: [Ref](#)

