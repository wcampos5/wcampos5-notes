#docker #processing #logs #network 

#### Stats
#stats 
Show container telemetry

```PowerShell
docker stats container
```

![[docker_stats.png]]

#### Updating a container
#dockerupdate

```PowerShell
docker update container [OPTIONS]
```

###### Updating Memory Limit
#dockermemory #limit

```PowerShell
docker update container -m 128M
```

###### Updating CPUs Limit
#dockercpu #limit

```PowerShell
docker update container --cpus 0.2
```

#### Stressing memory or CPU in linux
#stress #overload #cpu #dockermemory 

```PowerShell
docker run --name <container> -dti -m 128M --cpus 0.2 ubuntu 
```
```PowerShell
apt update && apt install stress 
```
```PowerShell
stress --cpu 1 --vm-bytes 50m --vm 1 --vm-bytes 50m 
```

Use `docker stats container` to see container stressing


### Docker Information
***

#### Docker Info
#dockerinfo

Show a bunch of Docker Server information
```PowerShell
docker info
```


#### Docker Logs
#dockerlogs

Show a bunch of Docker Server information
```PowerShell
docker logs container
```


#### Docker Process
#dockerprocess

Show a bunch of Docker Server information
```PowerShell
docker top container
```


### Docker Network Information
***

#### Docker Network
#dockenetwork

List Network information's
```PowerShell
docker network ls
```

We can inspect one of the listed networks to see details
#networkinspect

```PowerShell
docker network inspect bridge
```
_where **bridge** is listed by the previously command_

>[!error] Only Container in the same Network can reach each other

#### Ping
#ping 

Ping don't come installed by default
You can you the ping command to target other IP in the same network

![[Container Commands#Install Package into Ubuntu]]

It is part of the package `iputils-ping` to install:
`# apt-get install -y iputils-ping`

#### Creating a new Network
#dockernetwork #create

```PowerShell
docker network create minha-rede
```

#### Adding the container into the newly created Network
#container #network

```PowerShell
docker run --name container -dti --network minha-rede image
```

#networkinspect to see the sub-mask


#### Removing a Network
### Docker Server Information
***

#### Docker Info
#dockerinfo

Show a bunch of Docker Server information
```PowerShell
docker network rm rede
```
