Ref[^1]
***
#registry #fcr 


#fcrnewuser #adduserregistry 
#### Criar um novo usuario em: Ford Container Registry

[https://fcr.ford.com/updateuser](https://fcr.ford.com/updateuser)

Suporte:
[cloftis1@ford.com](mailto:cloftis1@ford.com "mailto:cloftis1@ford.com")

#### Criar  nova Organização

#### Criar os repositórios
_Opcional, pois são criados automaticamente no docker push_


#### Docker Login
[[Build Image to Registry or gar#Quay / Register Login]]

#### Criar os Containers

##### Container do Zero
A partir de um Dockerfile
[[Build Image to Registry or gar]]

##### A partir de uma imagem existente

Copiar a imagem de um Registry
```Bash
docker pull registry.ford.com/<org_name>/<repo_name>/<image_name>:<version>
```

##### Listar Containers
```Bash
docker image ls
```

Taggear para o novo repositório
```Bash

docker tag fcr.ford.com/<org_name>/<repo_name>/<image_name>:<version>
```


#### Tekton PaC Authentication
#registryauth #quay #robot 

#### Robot Auth Json (Download JSON)
![[Pasted image 20250401141129.png]]

### Convert to base64
```Bash
 cat /path/to/file/robot_file.json |base64
```

#### Copy and paste
Copiar o retirno acima e colocar em:
_<base64_encoded_docker_config>_ no yaml abaixo.

Criar um novo secret para o Tekton namespace

#### Tekton Secret
```yaml
# quay-robot-secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: quay-fcr-robot-secret
  annotations:
    tekton.dev/docker-0: "fcr.ford.com"  # Replace with your Quay registry URL if different
type: kubernetes.io/dockerconfigjson
data:
  .dockerconfigjson: <base64_encoded_docker_config>
```

#### Criar/Atualizar uma ServiceAccount

```yaml
# tekton-serviceaccount.yaml
apiVersion: v1
kind: ServiceAccount
metadata:
  name: tekton-sa
secrets:
  - name: quay-fcr-robot-secret
```


#### Atualizar o endereço da imagem na Pipeline


***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)