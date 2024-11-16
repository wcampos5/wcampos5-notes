Postgres Login process[^1]
***
#postgres #postgresconfig #postgresconnection 

#### Admins
"3 steps for adding people to access Postgres sql:
1. add users to fim grp - fim grp - gcp-m1-oillifeprog-developers
2. add team to TF code for Postgres *locals* session
	[gdiaprogsql](https://github.ford.com/gdia-prognostics/gdiaprogsql/blob/main/main.tf)

3. add members to GDIA read/write in postgress(only user who is part of this FIM can do this - gcp-sm-m1-oillifeprog)"

#### Users Database connection

Update Google Cloud Credentials
 ```
 gcloud auth login --update-adc
```

Copy Private **Access** Token
#privateaccesstoken
```
gcloud auth print-access-token |sed 's/\r\n//g' | clip
```
>[!warning] make sure you don´t have any space or Carrier Return

###### Dev Properties

###### Connection
|                      |                                                                                                |
| -------------------- | ---------------------------------------------------------------------------------------------- |
| Hostname/Address     | 10.16.166.9 (Old)                                                                              |
|                      | 10.22.32.48                                                                                    |
| Port                 | 5432                                                                                           |
| Maintenance Database | gdia_prog_pg_dev                                                                               |
| username             | cdsid@ford.com                                                                                 |
| password             | ([[PowerShell Commands#Get gcloud access token\|gcloud Get Access Token]]) #privateaccesstoken |

###### QA Properties

###### Connection
|                      |                                                                 |
| -------------------- | --------------------------------------------------------------- |
| Hostname/Address     | 10.16.168.120                                                   |
| Port                 | 5432                                                            |
| Maintenance Database | gdia_prog_pg_qa                                                 |
| username             | cdsid@ford.com                                                  |
| password             | ([[PowerShell Commands#Get gcloud access token\|gcloud Get Access Token]]) |
Stage/Production Properties

###### PROD Properties

###### Connection
|                      |                                                                 |
| -------------------- | --------------------------------------------------------------- |
| Hostname/Address     | 10.16.166.148                                                   |
| Port                 | 5432                                                            |
| Maintenance Database | gdia_prog_pg_prod                                               |
| username             | cdsid@ford.com                                                  |
| password             | ([[PowerShell Commands#Get gcloud access token\|gcloud Get Access Token]]) |



[^1]: [Postgres Login process](https://azureford.sharepoint.com/:w:/r/sites/CSIAnalytics/Shared%20Documents/Prognostics/Internal%20DEA%20Prognostics/PAE%20Streaming/KT%20Files/Steps%20to%20connect%20postgresql%20for%20GDIA%20Prognostics%20SE-%20user%20login.docx?d=w39892272a39141099ef14996b0af743c&csf=1&web=1&e=VvRfZd)