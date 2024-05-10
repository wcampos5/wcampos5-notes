Ref[^1]
***
#postgres #tablespaces #tablespacescreation
#### Tablespaces
Physical data store in the computer/server

![[Postgres_tablespaces_creation.png]]

Type:
_Name, comment and select  Owner_
![[Postgres_tablespaces_creation_screen.png]]

Definition Tab:
Physical path where data will be stores


***

>[!code] SQL tablespaces creation script
>```
>CREATE TABLESPACE ts_pp
  >OWNER ateliepp
  >LOCATION E'C:\\Wilson\\Training\\Java\\Michele Brito\\db\\postgres\\pp\\data';
>
>ALTER TABLESPACE ts_pp
>  OWNER TO ateliepp;
>
>COMMENT ON TABLESPACE ts_pp
  >IS 'Tablespace to pp-api application database';


***
[[Postgres new Environment - User|User creation]] | [[Postgres new Environment - Database | Database]]
#### Tags
***
[^1]: [Ref](#)