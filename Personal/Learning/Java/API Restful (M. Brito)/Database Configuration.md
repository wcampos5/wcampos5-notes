Spring Boot 3 | Curso Completo 2023[^1]
29' - 36'
***
#springboot3 #database #configuration #postgres #postgresgradle #applicationproperties #hibernatelogs


>[!warning] Database Connection
>Due to the implementation of the data-jpa
>```
>implementation 'org.springframework.boot:spring-boot-starter-data-jpa'
>```
>The application will try to stablish a database connection  soon as it starts

_Application.properties database configuration_

```
...
# Postgres  
spring.datasource.url=jdbc:postgresql://localhost:5432/pp-api
#Credentials
spring.datasource.username=postgres  
spring.datasource.password=database123  
# Map the Java code to Database  
spring.jpa.hibernate.ddl-auto=update  
# Do not show hibernate logs  
spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation=true
```

Where connect string ==_datasource.url_== means:
#datasourceurl
_driver:urlDefault://host:port/databaseName_

==_spring.jpa.hibernate.ddl-auto_==
set to: _update_
Allows the Java code to map/create table into database

Do not show hibernate logs
#hibernatelogs
==spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation== =true


***
[[Setup Environment]] | [[Model Class]]

***
[^1]: [Spring Boot 3 | Curso Completo 2023](https://www.youtube.com/watch?v=wlYvA2b1BWI&t=1279s)