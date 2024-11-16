Ref[^1]
***
#bqsum #sum #casewhen 

#### Reference Schema
![[./files/1.northwindddl.sql]]

#### Reference Data
![[./files/3.customers_employees_products.sql]]

#### Somar valores basenado se no mes


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
***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)