Ref[^1]
***
#bqsum #sum #casewhen  #casewhenthen #if #ifsql #coalesce

#### Reference Schema
![[./files/1.northwindddl.sql]]

#### Reference Data
![[./files/3.customers_employees_products.sql]]

#### IF
#ifsql 

```sql
IF(COND, RESV, RESF)
```

Se condição \<COND\> for verdadeira retorna \<RESV\>, caso contrário retorna \<RESF\>

```SQL
SELECT
  category_id,
  category_name,
  --IF
  --IF(category_name = "Beverages")
  -- IF Aninhado
  IF(category_name = "Beverages", "X", if(category_name = "Seafood", "X", "")) AS "caso 2"
FROM `northwind.categories`
```

![[select_if_condicion_caso2.png]]


#### CASE WHEN THEN END
#casewhenthen

>[!warning] 🔥 Avalia os casos na sequência 🔥
>Após o 1o caso verdadeiro (que passe na condição) ignora o restante.

Exemplos: 
##### Somar valores basenado se no mes


```SQL
-- Cria uma tabela (mes_cte) na memória
WITH mes_cte as (
  SELECT
  employee_id,
  EXTRACT(MONTH FROM birth_date) as mes_nasc
  FROM `northwind.employees`
  WHERE EXTRACT(YEAR FROM birth_date) BETWEEN 1900 AND 1990
)

-- Utiliza a tabela mês_cte
SELECT
mes_nasc,
SUM(CASE WHEN mes_nasc = 1 THEN 1 ELSE 0 END) AS Janeiro,
SUM(CASE WHEN mes_nasc = 2 THEN 1 ELSE 0 END) AS Fevereiro,
SUM(CASE WHEN mes_nasc = 3 THEN 1 ELSE 0 END) AS Marco,
SUM(CASE WHEN mes_nasc = 4 THEN 1 ELSE 0 END) AS Abril,
SUM(CASE WHEN mes_nasc = 5 THEN 1 ELSE 0 END) AS Maio,
SUM(CASE WHEN mes_nasc = 6 THEN 1 ELSE 0 END) AS Junho,
SUM(CASE WHEN mes_nasc = 7 THEN 1 ELSE 0 END) AS Julho,
SUM(CASE WHEN mes_nasc = 8 THEN 1 ELSE 0 END) AS Agosto,
SUM(CASE WHEN mes_nasc = 9 THEN 1 ELSE 0 END) AS Setembro,
SUM(CASE WHEN mes_nasc = 10 THEN 1 ELSE 0 END) AS Outubro,
SUM(CASE WHEN mes_nasc = 11 THEN 1 ELSE 0 END) AS Novembro,
SUM(CASE WHEN mes_nasc = 12 THEN 1 ELSE 0 END) AS Dezembro
FROM mes_cte
GROUP BY mes_nasc
ORDER BY mes_nasc
```

![[bq_with_mes_cte.png]]

##### Retorno baseado no nome da categoria

```SQL
SELECT
  category_id,
  category_name,
  CASE
    WHEN category_name = "Beverages" THEN "X" ELSE ""
  END AS caso1
FROM `northwind.categories`
```

Lista a categoria, criando um nova coluna _caso1_, quando o nome da categoria corresponder a condição retorna X

![[select_case_when_then1.png]]



#### COALESCE
#coalesce 

```SQL
COALESCE(EXP1,...,EXPN)
```

- Retorna a primeira expressão não nula.
- Preenche os valores nulos com um valor alternativo.

Exemplos:

##### Preencher valore nulos de uma coluna

```SQL
SELECT
  o.order_id,
  o.customer_id,
  c.contact_name,
  o.ship_region,
  COALESCE(ship_region, "Não informada") as ship_region_filled
FROM `northwind.orders` as o
JOIN `northwind.customers` as c ON o.customer_id = c.customer_id
```

![[select_coalesce_fill_nulls.png]]

##### Priorizar dados de uma deterninada tabela:

Imagine que você tem duas tabelas: `usuarios` e `usuarios_detalhes`. `usuarios` contém informações básicas, enquanto `usuarios_detalhes` contém informações adicionais, que podem ou não existir para todos os usuários. Você quer exibir o endereço do usuário, priorizando a informação em `usuarios_detalhes`:

```SQL
SELECT u.nome, COALESCE(ud.endereco, u.endereco_padrao) AS endereco
FROM usuarios u
LEFT JOIN usuarios_detalhes ud ON u.id = ud.id_usuario;

```





***


***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)