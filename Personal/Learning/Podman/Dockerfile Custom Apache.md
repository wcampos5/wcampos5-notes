#apche

- [ ] Create a directory to the images 
#newitem #powershell

```PowerShell
New-Item -ItemType Directory -Path c:\Temp\Lixo\images
```

- [ ] Create a directory to your image app
```PowerShell
New-Item -ItemType Directory -Path c:\Temp\Lixo\images\debian-apache
```

- [ ] Create a directory to your site files
```PowerShell
New-Item -ItemType Directory -Path c:\Temp\Lixo\images\debian-apache\site
```

- [ ] Change to the directory `c:\Temp\Lixo\images\debian-apache\site

- [ ] Download the site app example from
```PowerShell
wget http://site1368633667.hospedagemdesites.ws/site1.zip
```

Unzip the file to be compressed with tar.gz
>[!warning] ADD command un-compress tar.gz file in the container
#add #dockerfileadd

- [ ] Unzip files
```PowerShell
unzip site1.zip
```

- [ ] Compress with tar file
```bash
tar -czf site.tar ./
```
 - [ ] Move site.tar to lower directory and remove site directory
 ```PowerShell
 mv site.tar .. \
 Remove-Item site
```


- [ ] Create the Dockerfile
#aptclean #clean

```Dockerfile
From debian

RUN apt-get update && apt-get install -y apache2 && apt clean

# Variables required
ENV APACHE_LOCK_DIR="var/lock"
#pid file contains the PID ID process
ENV APACHE_PID_FILE="var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

#ADD copy and uncompress tar files
ADD ./site.tar /var/www/html

LABEL description = "Apache webserver 1.0"

#VOLUME to persitence of data
VOLUME /var/www/html

#EXPOSE PORT
EXPOSE 80

#ENTRYPOINT executa a aplicação do apache
ENTRYPOINT ["/usr/sbin/apachectl"]

#CMD passa a lista de paramentros 
CMD ["-D","FOREGROUND" ] #Em 1o plano


```
>[!info] apt clean 
>remove un-used installation files

- [ ] Build the image
```PowerShell
docker build -t debian-apache:1.0 ./DockerfilePath
```


