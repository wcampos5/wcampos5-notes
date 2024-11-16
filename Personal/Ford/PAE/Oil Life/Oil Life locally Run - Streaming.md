#olmanualrun #smmaualrun #olsmerror #smauthenticationerror
***

#### Issue


```Java
org.postgresql.util.PSQLException: FATAL: password authentication failed for user "//pg-dev-username"
	at org.postgresql.core.v3.ConnectionFactoryImpl.doAuthentication(ConnectionFactoryImpl.java:693) ~[postgresql-42.6.2.jar:42.6.2]
```

##### Solution
_Make sure you  have renewed the gcloud credentials_
```bash
gcloud auth login
gcloud auth application-default login
```

_Make sure you are in the correct gcloud project environment_
```bash
gcloud config set project ford-<project_number>
```