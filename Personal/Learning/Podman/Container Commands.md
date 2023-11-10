References:
Docker guide[^1]

***
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