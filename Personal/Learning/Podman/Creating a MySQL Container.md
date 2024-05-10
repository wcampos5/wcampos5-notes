#docker #mysql #createcontainer

[MySQL Docker Hub Reference](https://hub.docker.com/_/mysql)

#### Required Variables
(acc. documentation above)

###### `MYSQL_ROOT_PASSWORD`
This variable is mandatory and specifies the password that will be set for the MySQL `root` superuser account. In the above example, it was set to `my-secret-pw`.

#### Run MySQL Container
#environment #variable 
```PowerShell
docker run -e MYSQL_ROOT_PASSWORD=senha123 --name mysqldb -d -p 3306:3306 image
```

>[!info] Where:
>> _-e_ for Environment Variables
>> _-d_ Detached (Daemon)
>> _-p_ Expose the port to host (host:container)

#### Config MySQL through bash

```PowerShell
docker exec -it mysqldb bash
```

###### MySQL Login
#mysqllogin
```PowerShell
mysql -u root -p --protocol=tcp
```

#### Database Create
Once logged in `mysql>`
#mysqldatabase
```mysql
CREATE DATABASE aula;
```

```MySQL
show databases;
```

![[mysql_show_databases.png]]

##### Exit from MySQL and Container
Exit (twice)

#### Looking for a created new IP
#dockerip #ip
```Linux
ip a
```
Or 
```Windows
ipconfig
```

This will show the Mask and Sub-mask used to the containers

###### Discovering the IP and other info regarding your container
#dockerinspect
```PowerShell
docker inspect container_name
```

![[docker_inspect_response.png]]
MySQL is been use the IP: 


