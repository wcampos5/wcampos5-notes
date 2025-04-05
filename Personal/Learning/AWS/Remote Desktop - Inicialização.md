Ref[^1]
***
#aws #rdp #remotedesktop #winserveraws #rdpstart


>[!warning] Os recursos são validos apenas para a região previamente criados

#### 1. Anexar Volume
- Volume
	- :fas_computer_mouse:  Botão direito sobre o volume
		- Associar volume
			- Escolher a instância EC2
			- Nome do Dispositivo:
				- Raiz: _/dev/sda1_

#### 2. Conexão remota WS2019
- :fas_computer_mouse:(RBT) Iniciar instancia
- :fas_computer_mouse:(RBT) Conectar-se a instância
- Aba -> Cliente RDP 
	- Fazer download do arquivo pem
		- Decriptografar senha
	- Copiar:
		- Public DNS
		- Nome de Usuario
		- Senha

#### 3. Abrir o Remote Desktop localmente
:fab_windows: + R : `mstsc`
Expandir _Show Options_
- Computer:
	- AWS Public DNS (_sem a porta_)
- Nome de Usuario
	- _Administrator_ (WS2019) _ec2-user_ (Linux AMI Mate)
- Senha
	- Senha decriptografada AWS (Caso não tenha alterado na 1a inicialização do Windows Server)
	OU
	- Ervilha07




***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)