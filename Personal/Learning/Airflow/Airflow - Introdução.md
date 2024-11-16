
#airflow #airflowintroduction #orchestrator

Airflow - Quick Explanation[^1]
***

#### Orchestrator :fas_network_wired: 

###### Definição formal
Um orquestrador pega dados de multiplos locais de armazenamento, organiza, combina e torna isso disponivel para análise.

![[orchestrator_definition.png]]


Definição simplória de orquestrador kkkkk

Considerando como é feito um chocolate...

A RECEITA seria uma `DAG` Direct Acyclic Graph #dag 
A SEQUENCIA em que os elementos se misturam seria o Data Pipeline.
E o COZINHEIRO seria o orquestrador.


Na stack  o Airflow esta logo abaixo do componentes de data Science
![[data_stack.png]]

***
#### Airflow - Definição 
#airflowdefinition

É uma plataforma open source para desenvolvimento, agendamento e monitoramento de workflow em lote (_batch-oriented workflow_)

É um extenso Python frameword

Permite criar workflows conectando vitualmente com qualquer tecnologia.
Sua UI ajuda a gerenciar o estado dos workflows
É implementado de várias maneiras, variando de um único processo local até uma configuração distribuida para suportar enormes workflows.

#### Elementos

##### OPERATOR

Task = OPERATOR
![[task_operator.png]]
 Um operador pode ser pensado como sua classe, um objeto que encapsula a ação a ser executada.

###### Bash Operator exemplo
#operator #operators 

```python
from airflow.operators.bash import BashOperator

bash_task = BashOperator(
						 task_id="bash_task",
						 bash_command='echo "Hi there!"')
						 
```

Use [https://registry.astronomer.io/](https://registry.astronomer.io/) para localizar operadores
- Buscar por Python
	- Python Operators
	- Clicar em :luc_git_merge: _Use Module_ no topo a direita da pagina para exemplo de uso.



##### DAG RUN
#dagrun

Assim que um uma DAG é iniciada pelo shceduler ela se torna uma DAG RUN.
DAG RUN é uma instância da DAG na pipeline em um determinado momento.

##### TASK RUN

É criada quando a Task em um data pipeline (DAG RUN) é inicializada, se torna uma Task instance da task em um determinado momento no diagrama.



#### Componentes do Airflow

- WebServer
	- Acesso a UI
- Scheduler
	- Precisar estar rodando para executar as tarefas
- Meta Database
	- Qualquer database compativel com a biblioteca Python SQL Alchemy, para armazenar os dados relacionados aos diagramas, task instances, users...
- Trigger (componente especial, não necessáriamente necessário)





#### Resumo de implamentação

###### Imports
```python
import airflow.decorators import dag, task
from datetime import datetime
```

###### Workflow Definition (DAGs)
#dag
```python
@dag(start_date=datetime(2024,11,7)),
    schedule='@daily',
    description='minha dag faz isto...',
    tags=['time_a']
)

def my_dag:
```

###### Tarefas e Dependencias
Tasks and dependencies
#tasks 

```python

@task
def extract():
    return 42

def transform(val):
	return val + 42

def load(val):
    print(val)

val = extract()
new_val = transform(val)
load(new_val)

```



>[!error] ####  Airflow IS NOT
>Não é a solução para trabalhar com streaming, ele é orientado a lotes (batches)
>Não é para Data Processing


***
[[]] | [[]]
#### Tags
***
[^1]: [Airflow - Quick Explanation](https://www.youtube.com/watch?v=CGxxVj13sOs)
