Ref[^1]
***
#bqsubquerie #bqavg

#### Reference Schema
![[./files/1.northwindddl.sql]]

#### Reference Data
![[./files/3.customers_employees_products.sql]]

#### Listar cada produto com o preço médio dos produtos da mesma categoria.

![[bq_avg_products_category.png]]

_A tabela produtos tem a categoria e os preços dos produtos_

Precisamos trazer os campos desejados de produtos como _product_s
- Fazer um seleção interna na mesma tabela products como _products2_
	para criar a coluna preço médio
- Fazer um _join_ com o comando _where_ para trazer apenas as categorias iguais nas tabelas nomeadas _products_ e _products2_
	`products.category_id` = `products2.category_id`

```sql
SELECT
  product_id,
  product_name,
  category_id,
  --Preco medio
  (
    SELECT AVG(unit_price)
    FROM `northwind.products` as products2
    WHERE products2.category_id = products.category_id
  ) as preco_medio
FROM `northwind.products` as products
```

![[bq_avg_products_category_result.png]]


***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)