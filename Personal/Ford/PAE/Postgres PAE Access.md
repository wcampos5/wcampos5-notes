	#postgres

"3 steps for adding people to access Postgres sql:
1. add users to fim grp - fim grp - gcp-m1-oillifeprog-developers
2. add team to TF code for Postgres *locals* session
	[gdiaprogsql](https://github.ford.com/gdia-prognostics/gdiaprogsql/blob/main/main.tf)

3. add members to GDIA read/write in postgress(only user who is part of this FIM can do this - gcp-sm-m1-oillifeprog)"

#### Dev Properties

###### Connection
|                      |                                                                 |
| -------------------- | --------------------------------------------------------------- |
| Hostname/Address     | 10.16.166.9                                                     |
| Port                 | 5432                                                            |
| Maintenance Database | gdia_prog_pg_dev                                                |
| username             | cdsid@ford.com                                                  |
| password             | ([[Commands#Get gcloud access token\|gcloud Get Access Token]]) |




##Errors & Fix

>[!error] Error State:
![[Pasted image 20240222141537.png]]

>[!success] Solution


