Make sure that the ===**Docker** is up and running===

1. Open the powershell as Admin (Right Click over windows key)

2. Open the Docker Desktop

3. Do this Everytime you connect to VPN
	### **Connect into VPN (Cisco AnyConnect)**
```
Get-NetAdapter | Where-Object { $_.InterfaceDescription -Match "Cisco AnyConnect" } | Set-NetIPInterface -InterfaceMetric 4000
```
	
```
Get-NetIPInterface -InterfaceAlias "vEthernet (WSL)" | Set-NetIPInterface -InterfaceMetric 1
```

3.  Personate / Impersonate
	1. Clear Personate (If required)
	```
	gcloud config unset auth/impersonate_service_account
	```

	2. Do Impersonate[^1] (If required)
	```
	gcloud config set auth/impersonate_service_account --impersonate-service-account=sa-developer@ford-205d7c8557863b0cd61dd08a.iam.gserviceaccount.com
	```

4. GCP User Login
```
gcloud auth login
```

5. Get API login authorization
```
gcloud auth application-default login
```

Make sure ===you are in the desired project===

6. Setup proxy for the current session
```
$env:http_proxy="http://internet.ford.com:83"
```

```
$env:https_proxy="http://internet.ford.com:83"
```

7. Create the image using the Dockerfile
	==go to the repository path where is the Dockerfile==

	1. Image to Dev
```
docker build -t us-central1-docker.pkg.dev/ford-205d7c8557863b0cd61dd08a/ford-container-images/$reponame:$version $imagePath
```
		2. Image to QA
```
docker build -t us-central1-docker.pkg.dev/ford-fd1f7435faf9d1a3c128a323/ford-container-images/$reponame:$version $imagePath
```
		3. Image to Prod
```
docker build -t us-central1-docker.pkg.dev/ford-39136f1b3cee1e5c27702bca/ford-container-images/$reponame:$version $imagePath
```

***
#### Errors:

Error: Failed to get existing workspaces: querying Cloud Storage failed: googleapi: Error 401: Invalid Credentials, authError

Solution:
[^1]: Do Impersonate (Step 3)


#manualdeployment #gcpdeployment #dockerdeployment #podmandeployment