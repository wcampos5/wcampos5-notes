#postgres #database 

O ideal ao se criar uma nova database é criar um eco-sistema completo

1. [[Postgres new Environment - User#1. Postgres User creation|Login de Usuário]]
2. [[Postgres new Environment - Tablespaces#Tablespaces|Tablespaces]]
3. [[Postgres new Environment - Database | Database]]

#tablespace
#### Tablespaces
Physical data store in the computer/server

#### Database 
Logical organization

***
#### 1. Postgres User creation
#postgres #user #newuser #usercreation #adduser

Login/Group Roles -> Create-> Login/Group Roles
![[Postgres_user_creation.png]]

Type username and comments
![[Postgres_user_creation_screen.png]]

In Definitions tab define:
- password
- Expiration Date (blank to no expire)
- Connect Limit (-1 to unlimited)

In the Privileges:

![[Postgres_user_creation_screen_privileges.png]]

***

>[!code] SQL user creation script
>```sql
>CREATE ROLE ateliepp WITH
>	LOGIN
>	NOSUPERUSER
>	CREATEDB
>	NOCREATEROLE
>	INHERIT
>	NOREPLICATION
>	CONNECTION LIMIT -1
>	PASSWORD 'xxxxxx';
>COMMENT ON ROLE ateliepp IS 'Default user to the testing application pp';


***
[[]] | [[Postgres new Environment - Tablespaces]] 
#### Tags
***
[^1]: [Ref](#)