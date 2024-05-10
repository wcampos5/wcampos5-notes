See Dockerfile sample[^1]
See Dockerfile simple python[^2]
See Dockerfile custom apache[^3]

#dockerfilesample #dockercommands

 ***FROM*** 
 – Indica qual imagem será utilizada como base. Ela precisa ser a primeira linha do dockerfile. 
 
 ***WORKDIR*** 
 – Responsável por mudar do diretório / (raiz) para o especificado nele.

***RUN*** 
 – Executa qualquer comando em uma nova camada no topo da imagem e commita as alterações. 
 Essas alterações você poderá utilizar nas próximas instruções de seu dockerfile. 
  
 ***CMD*** 
 – Executa um comando, o CMD o executa no início da execução do container. 
>[!info] Usage Example
>CMD Command=value
>CMD ["python", "./your-daemon-or-scripty.py"]
 
 ***LABEL*** 
 – Adiciona metadados à imagem, como versão, descrição e fabricante. 

 ***ADD*** 
 – Copia novos arquivos, diretórios, arquivos TAR ou arquivos remotos e os adiciona ao filesystem do container. 
 ==tar.gz são automaticamente descompactados==
 
 ***COPY*** 
 – Copia novos arquivos e diretórios e os adiciona ao filesystem do container.  
 
 ***ENTRYPOINT*** 
 – Permite configurar um container para rodar um executável e quando esse executável for finalizado o container também será.  
 
 ***ENV*** 
 – Informa variáveis de ambiente ao container.  
 
 ***EXPOSE*** 
 – Informa em qual porta o container estará ouvindo.  
 
 ***MAINTAINER*** 
 – Autor da imagem.   
 
 ***USER*** 
 – Determina qual o usuário que será utilizado na imagem. Por default, é o root.  
 
 ***VOLUME*** 
 – Permite a criação de um ponto de montagem no container.  
 


[^1]: [[Dockerfile Sample]]
[^2]: [[Dockerfile Simple Python app sample]]
[^3]: [[Dockerfile Custom Apache]]

Reference:
*Vitalino, Jeferson Fernando Noronha; Castro, Marcus André Nunes. Descomplicando o Docker (Portuguese Edition) (pp. 68-69). BRASPORT. Kindle Edition.* 



***
### TAGS:

#command #commandos  #dockerfile