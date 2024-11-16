Modelagem de Dados[^1] 
Ref[^2]
xx'
***
#sql #bdtype #dbtype

#### Tipos de Banco de Dados
✅ Flat-Type
	Simplistas
	Comumente usados para arquivos .ini, .txt ou .csv
	Bi-Dimensionais (Linha \[Registro\] x Coluna \[Campo\])
	
✅ Hierarchical
	Estrutura de arvore
	Cada Pai tem varios filhos, mas um filho só tem UM pai
	
✅ Relational
	Melhoria do tipo Hierarquico, possibilitando a relação 
	Muitos-pra-Muitos


>[!Info]  **Modelo de Dados**
>Dentro do Banco de Dados, temos o Modelo de Dados
>Mostra a estrutura lógica de um BD
>>Relações e Restrições que determinam como os dados podem ser armazenados e acessados

---

#### Modelo Relacional

>[!quote] Princípios
>Todos os dados são guardados em Tabela
>Definição teórica baseada na teoria dos conjuntos

- Entidade
	Uma tabela
		Local onde são armazenados os dados informados ao Banco de Dados.
		Elas relacionam-se entre si, dependendod e como o Banco de Dados foi armazenado.
- Coluna
	Atributo ou caracteristica única da tabela
	Possui um tipo de dados (texto, numero, imagem, etc.)

- Linha ou Tupla
	Registros armazenados nas tabelas
	

###### Estrutura Model Relacional

- Entidade (Funcionário)
	:far_circle_dot: matricula
	:far_circle: nome
	:luc_circle: codigodepto

- Relacionamento
	:fas_diamond: _Perntence à_

- Cardinalidade
	(0,n), (1,n), (1,1) ou (n,n)


---

#### Modelo Entidade-Relacionameto
(MER) ou (EE)

Extensão do Modelo Relacional, chamado de **Meta-Modelo**

>[!info] Diferencial com relação ao MER
>Permite obter resultados e esquemas;
>puramente conceituais sobre o negócio a ser mdelado;










***
[[Modelagem de Dados - SQL]] | [[]]

***
[^1]: [Modelagem de Dados](https://ford.udemy.com/course/preparatorio_mta_database_fundamentals/learn/lecture/19077612#questions)
[^2]: [Ref](#)

