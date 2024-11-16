Kafka com Springboot[^1]
Github exemplo[^2]
***

### Setup
#### build.gradle

```
// Kafka  
implementation "org.springframework.kafka:spring-kafka"
```


#### :obs_folder: config folder
Criar a pasta :luc_folder:  `config` na raiz do projeto

##### Kafka Server and Topic
#kafkaserver #topic
Criar a classe :fas_file:  `kafkaTopicConfig.java`.

![[kafka_springboot_topic_config.png]]

Injetar a propriedade `bootstrapaddress` do arquivo application.properties.

- Métodos:
	- `Kafka Admin`
		Conecta no servidor Kafka
		
	- `topicOrderProcessed`
		Cria um tópico com as seguintes propriedades:
			`name`
			`numPartitions`
			`replicas` (no caso apenas uma)

#### Kafka Producer
#producer 
Criar a classe :fas_file:  `KafkaProducerConfig.java`.

![[kafka_springboot_producer_config.png]]

Injetar a propriedade `bootstrapaddress` do arquivo application.properties.

Métodos:
- `orderProducerFactor`
	Gera instâncias pra trabalhar com Producers no Kafka com as seguintes configurações:
		`bootstrapaddress` (endereço do servidor)
		`StringSerialSerializer.class` (chave da mensagem, que é a String solicitada no método)
		`JsonSerializer.class` (valor da mensagem, que o obj  #orderrecord )
			`OrderRecord` é uma classe imutavel do Java.
>[!info] `JsonSerializer.class` serializa o OrderRecord
>Converte para JSON

- `orderKafkaTemplate` metodo:
	Criar um template pra produzir a mensagem.

##### OrderRecord
#orderrecord

Criar a pasta :luc_folder:  `record` na raiz do projeto.

Criar a classe :fas_file:  `OrderRecord.java`

![[kafka_springboot_order_record.png]]














***
[[Kafka - Calcular Partição]] | [[]]
#### Tags
***
[^1]: [Kafka com Springboot](https://www.youtube.com/watch?v=EKj8lDRgvLc)
[^2]: [Github Exemplo](https://github.com/rogerionj/KafkaExample)

