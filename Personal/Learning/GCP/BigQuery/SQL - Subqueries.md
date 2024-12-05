curso-completo-sql-para-analise-de-dados[^1] 
Ref[^2]
xx'
***
#sql #sqlsubqueries 

### Subqueries

Tipos de sub consultas (subqueries):
- Tabela
- Coluna 
- Filtro

#### Coluna

Caso:
Consultar usuarios (id e nome) da tabela usuarios _u_
Retornando o numero de compra do usuario da tabela compras _c_ através de uma subquerie de coluna.

```SQL
SELECT
	u.id,
	u.name,
	--Subquerie de coluna para somar as compras do usuario
	(
		SELECT
			count(c.id) as numero_compras
		FROM <prj.dataset.compras> c
		WHERE c.user_id = u.id
	) as num_compras
FROM <prj.dataset.usuarios> u	
```

![[subquerie_column.png]]


#### Tabela

O resultado de uma consulta é uma tabela, e esta pode ser passada para o 
FROM ou para o JOIN como entrada.

##### Exemplo 1
Tabela 1:
Contar o numero de pedidos _(order)_ por cliente (_customers_).
- 1 - Criar o SELECT interno que retorna uma tabela com:
	- customer_id
	- total de pedidos por cliente (_pedidos_)
>[!info] _pedidos_ será utilizado como entrada para o AVG

```SQL
SELECT
  c.customer_id,
  COUNT(o.order_id) AS pedidos
FROM `northwind.customers` AS c
LEFT JOIN `northwind.orders` AS o ON c.customer_id = o.customer_i
GROUP BY c.customer_id
```

- 2 Colocar o resultado da tabela anterior dentro da consulta do AVG

```SQL
SELECT
  AVG(pedidos) AS media_pedidos
FROM (
    SELECT
      c.customer_id,
      COUNT(o.order_id) AS pedidos
    FROM `northwind.customers` AS c
    LEFT JOIN `northwind.orders` AS o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
  );
```



##### Exemplo2:

Calcular o ticket medio:
- Somar o valor dos items de cada pedido

```SQL
SELECT
  order_id,
  user_id,
  sum(sale_price) as receita
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY order_id, user_id;
```

- Fazer a média da receita por pedido

```SQL
SELECT
  user_id,
  AVG(receita) as media_compra_do_usuario
FROM (
    SELECT
      order_id,
      user_id,
      sum(sale_price) as receita
    FROM `bigquery-public-data.thelook_ecommerce.order_items`
    GROUP BY order_id, user_id
)
GROUP BY user_id
```


#### Filtro

Resume-se a passar o resultado de um SELECT como entrada para a restrição da condição WHERE.

##### Exemplo:
Retornar o numero de compras por usuario usando subqueries para a 3a e para o FILTRO (clausula WHERE)

```SQL
SELECT
	u.id,
	u.name,
	--Subquerie de coluna para somar as compras do usuario
	(
		SELECT
			count(c.id) as numero_compras
		FROM <prj.dataset.compras> c
		WHERE c.user_id = u.id
	) as num_compras
FROM <prj.dataset.usuarios> u
--FILTRO
WHERE (
		SELECT
			count(c.id) as numero_compras
		FROM <prj.dataset.compras> c
		WHERE c.user_id = u.id
) > 0
```



***
[[]] | [[]]

***
[^1]: [curso-completo-sql-para-analise-de-dados](https://ford.udemy.com/course/curso-completo-sql-para-analise-de-dados/learn/lecture/46337751#overview)
[^2]: [Ref](#)

