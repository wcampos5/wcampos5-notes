Modelagem de Dados[^1] 
Postgres Data Type[^2]
xx'
***
#sql #datatype #numeric #postgresdatatype

###### Postgres - Tipo de Dados
:fas_square: **Numérico** - [numerci types](https://www.postgresql.org/docs/current/datatype-numeric.html)
![[postgres_numeric_types.png]]

>[!info] Precision x Scale
>Precision é o total de números significantes
>**Scale** é a porção fracionária do número (a direita do ponto)

_Os valores numéricos são armazenados fisicamente sem quaisquer zeros extras à esquerda ou à direita_

**Valores númericos ESPECIAIS**
_Infinity e NaN_ #inifinitive #nan 

Quando usado como constantes requerem single quotes:
```
SET x = '-Infinity'
```
Pode ser abreviado para _inf_ ou _-inf_

---

:fas_square: **Monetário**
:fas_square: **Charactere**
:fas_square: **Binário**
:fas_square: **Data / Hora**
:fas_square: **Boleano**
:fas_square: **Enumerado**
:fas_square: **Geometrico**
:fas_square: **Endereço de Rede**
:fas_square: **Bit**
:fas_square: **Busca de Texto**
:fas_square: **UUID**
:fas_square: **XML**
:fas_square: **JSON**
:fas_square: **Arrays**
:fas_square: **Composite**
:fas_square: **Range**
:fas_square: **Domain**
:fas_square: **Object Identifier**
:fas_square: _pg_lsn_
:fas_square: **Pseudo**
>[!info] CREATE TYPE
>Novos tipos podem ser criados usando-se 
>>```CREATE TYPE```



***
[[]] | [[]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077760#questions)
[^2]: [Postgres Data Type](https://www.postgresql.org/docs/current/datatype.html)

