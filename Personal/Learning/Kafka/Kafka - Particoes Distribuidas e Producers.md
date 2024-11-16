#kafka #partition #producers #overview

Particoes e Producers[^1]
Flow[^2]
***

#### Particoes Distribuidas
#distributedpartition #partitions 

![[kafka_distributed_partitions.png]]

>[!warning] 🔥 Mensagens com a mesma **key** iram pra mesma partição


#### Fator de Replicação
#replicationfactor #replicatorfactor

![[kafka_replication_factor.png]]


#### Entrega de Mensagens
#delivery #deliverymessages

![[kafka_delivery_messages.png]]

###### Round Robin
	Fila circular para processamento baseda na capacidade de que processa. 
	Exemplo: Os processos que não terminam no devido tempo vão para o final da fila com o restante a ser processado
	

#### Liderança de Partição / Partição Lider
#partitionleader #leadership #followers

![[kafka_parttion_lidership.png]]


#### Producer
#producer 

![[kafka_producer.png]]

Confirmação de entrega de mensagem #ack #acknoledgement 
- Acknoledgement
	- 0
		- Sem confirmação (mais rápido, possivel perda de mensagens)
	- 1
		- Confirmação de escrita na partição leader
	- -1
		- Confirmação de escrita em todas as partições (mais lento)

##### Garantia de Entrega
#deliver #atonce #atmost #exactlyonce 

![[kafka_producer_deliver.png]]


##### Idempotent Producers
#idempotent #idempotentproducers

![[kafka_idempotent_producer.png]]

>[!important] Idempotent ON (Exactly once)
>Evita duplicações da mensagem


***
[[Kafka - Introdução]] | [[Kafka - Consumidores e Conexões]]
#### Tags
***
[^1]: [Particoes e Producers](https://www.youtube.com/watch?v=Bej0mMrr1nI&list=PL5aY_NrL1rjt_AZxj11kQjiTNLGg4ZaZA&index=2&pp=iAQB)
[^2]: [Flow](https://whimsical.com/kafka-EbWjeGL3gDg9apxewMyGhB)


