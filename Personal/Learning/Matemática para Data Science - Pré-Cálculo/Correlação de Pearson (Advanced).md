#correlation #r2 #rsquare

Pearson[^1] 
Valor de P[^2]
***
#oillifemodel #smmaintenance #significanciaestatistic 


#valordep 
#### Valor de P

>[!quote] Valor de (P)
>Critério estatistico para avaliar se um valor é estatisticamente significativo
>**(p < 0,05)**
>##### Probabilidade Condicional
>- A probabilidade de você encontrar um valor igual ou tão extremo quanto o obitdo, _considerando a hipotese verdadeira como nula._


![[alcool_vs_acidente_transito.png]]

Considerando uma pesquisa estatistica onde a correlação:
_r=0,579_ e _p < 0,01_

A probabilidade de você achar outro resultado maior ou igual a este (r;0,579) em outra pesquisa é menor que 1% apenas, muito pequena.

**Conclusão:**

Se a possibilidade de encontrar um resultado igual a este partindo do principio que a correlação não existe e muito baixa.

>[!error] _(p)_ Não valida ou desvalida a hipotese
>_(p)_ se refere a **PROBABILIDADE** de se encontrar outro valor igual da correlação.


O Valor de _p_ e diretamente influenciado pela volume de amostra, ou seja, poucas amostras podem levar a um resultado tendencioso.
O valor de _(p)_ não reflete por sí só, a magnitude do achado (**força**).

Pouca amostras tendem a não atingir o ponto de corte: <0,05
Muitas amostras tendem a ser: <0,05, dentro do ponto de corte.

Exemplo:

![[problemas_valor_p.png]]

**Nota:** duplicando o numero de amostras (_n_) para os mesmos dados, a relação se mantem e o valor de p vai ganhando significância.

***

#### TAMANHO DE EFEITO
#effectsize #strog #forca

>[!quote] Tamanho de Efeito
>- Quão forte realmente é o resultado encontrado.
>- Protege (parcialmente) contra interpretações de  valor de (_p_) enviesados devido ao tamanho amostral.
>>- Amostras grandes demais
>>- Amostras pequenas demais
>>
>>- Erro Tipo I
>>- Erro Tipo II

##### Erro Tipo I
Rejeitar a nula (_Ho_), quando _Ho_ é verdadeira

![[error_type_I.png]]
##### Erro Tipo II
Aceitar a nula (_Ho_), quando _Ho_ é falsa.
- Afirmar que não há efeito, quando não há.

![[Error_type_II.png]]


##### Correlação (_p_) vs Amostras

![[valor_p_vs_amostras.png]]

##### Tipos de tamanho de efeito:

- **Correlação:** r2 (r quadrado)
- **Regressão Linear:** r2, _f_ de Cochen
- **Testes t:** _d_ de Cochen, Delta Glass, g de Hedges
- **ANOVAs:** eta-squared, partial eta-squared, ômega-squared
- **Qui-Quadrado:** Phi, Cramer´s V

>[!warning] Small Sample-size Bias
>Quanto menor a amostra, existe a tendência que o tamanho de efeito de um pouco maior.


***


### Correlação de Pearson
#pearson 

#### O que é a correlação de Pearson
Técnica estatistica para testar se existe uma ==_relação Linear_== entre duas váriaveis _quantitativas_

>[!info] Correlações não-paramétrica (curvilinear)
>Correlação de:
>Spearman ou
>Kendall



Exemplo:
_Existe relação entre estresse no trabalho e o numero de cigarros fumados em uma amostra de fumantes?_

#### Variaveis Quantitativas
Variaveis continuas, ou score de duas variaveis que você deseje testar se existe um relação entre elas.


#### Análise bivariada - Bidirecional

A correlação de Pearson é bivariada, ou seja,
se **A** se relaciona com **B** e **B** com **C**, então **C** se relaciona com **A**

![[analise_bivariada.png]]






#### Direção da Correlação

##### Positiva
#positivecorrelation
Quando o score da variavel de um eixo sobre a do outro eixo também

![[correlacao_positiva.png]]


##### Correlação Negativa
#negativecorrelation

Quando uma variavel sobe a outra desce.

![[correlacao_NEGATIVA.png]]


Correlação Nula
#nullcorrelation
Quando não existe associação entre os valores das variaveis

![[correlacao_nula.png]]


#### Força da Correlação

**-1:** _Correlação Perfeita negativa_
**0:** _Correlação Nula_
**+1:** _Correlação Perfeita Negativa_

![[corren_correlation.png]]

![[schober_correlation.png]]


A força da correlação é dada em módulo.

Quanto mais próximos da linha de tendencia maior é a correlação.

![[strong_correlation.png]]

**CorrelaçãoPerfeita**

![[perfect_correlation.png]]


#### Tamanho da Força de Correlação
#r2

#### R2 
>[!quote] R2 (ou Coeficiente de Determinação)
>É a Variancia Compartilhada dada em porcentagem

 - Tamanho de Efeito (Coeficiente de determinação)


![[r2_variancia_comartilhada.png]]

Elevando  a relação ao quadrado r2, obtemos o valor em porcentacem compartilhada entre as variaveis.

![[forca_correlação_r2.png]]

Ao se elevar ao quadrado, percebe-se que ao aumentar a correlação, a diferenção cresce da variança compartilhada cresce exponencialmente.






***
[[]] | [[]]

***
[^1]: [Pearson](https://www.youtube.com/watch?v=bkARboD64FQ)
[^2]: [Valor de P](https://www.youtube.com/watch?v=uFCg3684ezQ)
