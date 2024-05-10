References:
Docker guide[^1]
Introducao ao Docker - YouTube[^2]

#docker #podman #commands
***
#### Getting an image from Docker Hub
[Hub Docker](https://hub.docker.com/)
#dockerhub

#dockerpull #pull
```Powershell
docker pull image_name
#or 
docker pull image:tag
```

[[Pull Image Check List]]

>[!info] Example
>```
>docker pull hello-world
>```
>


#### Removing local images to release storage space
#dockerrmi
```PowerShell
docker rmi image_name
```


#### List docker process (running machines)
#dockerps #dockerlistprocess
```PowerShell
docker ps
```
Or the new syntax
```PowerShell
docker container ls
```

#### List docker prior processed (stopped machines)
```PowerShell
docker ps -a
```

#### Run a container
#dockerrun

Normally the container will execute and then exit.
To let it running as a daemon in background process execute:
```PowerShell
docker run -dti image_name
```
>[!info] Where:
>> - -d - Detached (Background Daemon)
>> - -t - TTY (Terminal)
>> - -i - Interactive
###### Providing a name to a container
#containername #dockernamed
```PowerShell
docker run -dti --name image_name image
```

#### Execute commands into a running docker machine
#dockerexec #runningimage #image
###### Exec
	Used to execute commands into a running image

```PowerShell
docker exec -it container_name command
```
>[!warning] Example
>``` 
>docker exec -it 2af /bin/bash
>```

#### Copying Files from Source Machine --> Container
#dockercopy #dockercp
```PowerShell
docker cp c:/temp/file.txt machine_name:/target_path
```

#### Copying Files from Container -->Source Machine
```PowerShell
docker cp machine_name:/target_path/file.txt c:/temp/file.txt 
```


#### Mapping Container Volume
#volume #storage #persistence

```PowerShell
docker run --name alias_name -d -p xxxx:xxxx -v /host_path:/container_path image
```
>[!info] Example
>>```docker run --name alias_name -d volume=host_path:container_path image```

#### Volume Types
#volumetype

- **Bind Mount**
	```PowerShell
	docker run -v /hostdir:/containerdir image
```
	Using mount to bind...
	#volumemount #mount #dockervolume
	```PowerShell
	docker run -dti --mount type=bind,src=/data/imagedatadir,dst=/containerdatadir image
```
	_adding ro after containerdatadir_ makes data read only
	

- **Named volumes**
	Created manually:
	```PowerShell
	docker volume create volume_name
```
	They are created at: _/var/lib/docker/volumes_ and referenced by their names only.
###### List Volumes
```PowerShell
docker volumes ls
```

```PowerShel
	docker run -dti --name alias_name --mount type=volume,src=volume_name,dst=/containerdatadir image
```

- **Dockerfile volumes**
	Also created at: /var/lib/docker/volumes;
	Created by the VOLUME instruction;
	Doesn't have a specific name;
	Developer says where are the important data and what should be persistent.


#### Install Package into Ubuntu
#install #ubuntu #update #upgrade #docker #apt

>[!error] Before use _apt_ to install packages into a Ubuntu
>We need to run the update and the upgrade:
>```bash
>apt update
>apt upgrade -y
>```


#### Stop a Container
#dockerstop
To stop a container use:
```PowerShell
docker stop image_hash_id
```
>[!error] ATTENTION:
>> Container stopped still using the Hardware Resources,
>> they need to be listed and then removed
>> ```PowerShell
>> docker ps -a
>> ```
>> ```PowerShell
>> docker rm image_hash_id
>> ```
#dockerrm 

#### Forcing Stop and delete container (not the image)
#dockerstopforcing

```PowerShell
docker rm -f containerA containerB
```


### **Build an image**

Build from a Dockerfile
``docker build $path``
	Where $path is the Dockerfile target $path

### **Build naming and tagging an image

``docker build -t $repository-name(Optional):$tag $path``
	Sample:
	*docker build -t registry.ford.com/vehicle-data-command-center/alpine-318:latest **.**


### **Run image**

```
docker run $repository-name:version
```
	Sample1:
```
docker run registry.ford.com/vehicle-data-command-center/alpine-318:latest
```
	Sample2:
```
docker run hello-world:latest
```
To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

Architecture
![Docker Architecture](https://docs.docker.com/assets/images/architecture.svg)

### **Run image with interactive shell

```
docker run -it hello-world:latest bash
```



###  **Volume**



***
Footnotes:
[^1]: [Docker User Guide](https://docs.docker.com/get-started/overview/)
[^2][Introducao ao Docker - YouTube](https://www.youtube.com/watch?v=h8oTCmmu-d0)
