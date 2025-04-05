Ref[^1]
***
#aws #rdp #remotedesktop #winserveraws


>[!warning] Os recursos são validos apenas para a região previamente criados

#### 1. Network & Security

##### Criar as chaves publicas e privadas
 - Nome da chave
 - Tipo
	 - ED25519 (Linux & MAC)
	 - RSA (Windows & Linux)
- Formato
	- pem - Para uso na AWS
	- ppk - Conexão via Putty

>[!error] AVISO
>- Armazenar em local seguro
>- Ter backup, pois, perde-se o acesso a virtual machine sem a chave

#### 2. Security Groups

##### Criar um security group
- Nome do SG
- Descrição: Objetivo do SG
- VPC
- Definir Regras de entrada
	- Type: Tipo de Serviço
	- Protocolo: TCP/UDP
	- Porta: Porta do Serviço
	- Sorce: MyIP
##### WS 2019 Regras
###### Entrada:
![[sg_input.png]]
###### Saída:
![[sg_output.png]]


#### 3. Criar Instância
- AMI - Amazon Machine Image
	- MS Windows Server 2019
- Storage
	- 30gb ou conforme necessário
- Tags
	- Nome da sua instância
- Anexar o Security Group
	- Escolher o SG previamente criado
- Deploiar a Instancia (Launch)
	- Associar a key-pair


***
[[]] | [[Remote Desktop - Inicialização]]
#### Tags
***
[^1]: [Ref](#)