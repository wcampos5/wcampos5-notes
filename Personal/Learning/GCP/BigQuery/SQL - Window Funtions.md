curso-completo-sql-para-analise-de-dados[^1] 
Ref[^2]
xx'
***
#sql #windowfunction #janela


#### Agregação x Windows Functions

As funções de AGREGAÇÃO retornam um resultado único para o grupo (geralmente usando GROUP BY).

WINDOW FUNCTIONS traz linha a linha (não muda a estrutura das linhas)

>[!quote] 🔥 OTIMAS FUNÇÕES PARA SE CRIAR PARTIÇÕES EM TABELAS 
#partition
#### FIRST_VALUE
#first_value

Cria uma nova coluna na tabela e retorna o first value para cada ocorrência do item.
Dentro de OVER( PARTITION BY \<field\> ORDER BY \<field\>)

##### Sintaxe
`FIRST_VALUE(<field>) OVER(PARTITION BY <field> order <field>) as <alias>`

```SQL
SELECT
  o.user_id,
  o.order_id,
  o.created_at,
  -- FIRST_VALUE
  FIRST_VALUE(o.created_at) OVER(PARTITION BY user_id order by created_at) as first_date
FROM `bigquery-public-data.thelook_ecommerce.orders` o
ORDER BY user_id, created_at
```

![[first_value_example1.png]]


#### LAST_VALUE
#last_value

Cria uma nova coluna na tabela e retorna o last value para cada ocorrência do item.
Dentro de OVER( PARTITION BY \<field\> ORDER BY \<field\>)

**Adiciona-se:** ==_ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING_== dentro do OVER.

##### Sintaxe
`LAST_VALUE(<field>) OVER(PARTITION BY <field> ORDER BY <field> ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) as <alias>`

```SQL
SELECT
  o.user_id,
  o.order_id,
  o.created_at,
  -- LAST_VALUE
  LAST_VALUE(o.created_at) OVER(PARTITION BY user_id order by created_at ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) as last_date
FROM `bigquery-public-data.thelook_ecommerce.orders` o
ORDER BY user_id, created_at;
```

![[last_value_example1.png]]


#### LAG (anterior)
#lag

Cria uma nova coluna na tabela e retorna o valor ==anterior== para cada ocorrência do item.

>[!error] Retorna _null_ para a 1a ocorrencia no item no recorte, uma vez que este não tem anterior :).

##### Sintaxe
`LAG(<field>) OVER(PARTITION BY <field> ORDER BY <field>) as <alias>`

```SQL
SELECT
  o.user_id,
  o.order_id,
  o.created_at,
  -- LAG
  LAG(o.created_at) OVER(PARTITION BY user_id order by created_at) as data_ultimo_pedido
FROM `bigquery-public-data.thelook_ecommerce.orders` o
ORDER BY user_id, created_at;
```

![[lag_example.png]]

##### LAG Exemplo 2

Calcular a diferenca de dias entre um pedido e outro.
#timestampdiff #sqldatediff

```SQL
SELECT
  o.user_id,
  o.order_id,
  o.created_at,
  -- LAG
  LAG(o.created_at) OVER(PARTITION BY user_id order by created_at) as data_ultimo_pedido,
  TIMESTAMP_DIFF(created_at, LAG(created_at) OVER(PARTITION BY user_id ORDER BY created_at), DAY) as diff_dias
FROM `bigquery-public-data.thelook_ecommerce.orders` o
ORDER BY user_id, created_at;
```

![[lag_example_data_diff.png]]


#### LEAD (Posterior)
#lag

Cria uma nova coluna na tabela e retorna o valor ==posterior== para cada ocorrência do item.

>[!error] Retorna _null_ ocorrencias unicas no recorte, uma vez que este não tem próximo Dããã.

##### Sintaxe
`LEAD(<field>) OVER(PARTITION BY <field> ORDER BY <field>) as <alias>`

```SQL
SELECT
  o.user_id,
  o.order_id,
  o.created_at,
  -- LEAD
  LEAD(o.created_at) OVER(PARTITION BY user_id order by created_at) as data_proximo_pedido
FROM `bigquery-public-data.thelook_ecommerce.orders` o
ORDER BY user_id, created_at;
```

![[lead_example.png]]


#### RANK & ROW_NUMBER
#rank #rownumber

##### RANK
Cria uma nova coluna na tabela e retorna:
	o numero da linha do próximo  item não repetido (considerando os campos passados no ranking)

##### ROW_NUMBER
Cria uma nova coluna na tabela e retorna o numero da linha corrente.

##### Sintaxe
###### RANK
`RANK() OVER(ORDER BY <field_id>) AS rank`

###### ROW_NUMBER
`ROW_NUMBER() OVER(ORDER BY <field_id>) AS numero_linha`

```SQL
SELECT
  p.distribution_center_id,
  -- RANK
  RANK() OVER(ORDER BY distribution_center_id) AS rank,
  ROW_NUMBER() OVER(ORDER BY distribution_center_id) AS numero_linha
FROM `bigquery-public-data.thelook_ecommerce.products` p
ORDER BY distribution_center_id, numero_linha;
```

![[Pasted image 20241205095751.png]]


***
[[]] | [[]]

***
[^1]: [curso-completo-sql-para-analise-de-dados](https://ford.udemy.com/course/curso-completo-sql-para-analise-de-dados/learn/lecture/45463227#overview)
[^2]: [Ref](#)


***
[[]] | [[]]

***
[^1]: [curso-completo-sql-para-analise-de-dados](https://ford.udemy.com/course/curso-completo-sql-para-analise-de-dados/learn/lecture/45463227#overview)
[^2]: [Ref](#)

