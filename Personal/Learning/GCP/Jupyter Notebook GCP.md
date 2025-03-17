#jupyter #gcp #jupyterongcp #instance

Criar um novo workbook no workbench:
[Vertex AI - M1ML Project workbench](https://console.cloud.google.com/vertex-ai/workbench/instances?project=ford-d7910739734ba7b122bc0c0b)

- ==*create new instance*== Button
	- Name: *cdsid-instance-name*
		Exemplo: wcampos5-sm
	- Region: 
		- *us-central-1*(Iowa)
	- Zone:
		- *us-central1-a*
	- Network
		- *Shared network (from host project: prj-pp-gen-preprod-net-acc7)*
			- Network: *vpc-pp-gen-preprod*
			- Shared Subnetwork: Escolher uma com ip livre
	- Workbench Type (Configurado em Advanced Options)

==*Advanced Options*== Button

#### Instance Properties
***

##### Environment
JupterLab Version: *JupyterLab 3.x*
Version: *Use latest Version*

##### Machine Type
*e2-highmem-4 (4 vCPU, 2 core, 32 GB memory)* para BiqQuery

Enable Ide Shutdown
Set to: 20 minutes

#### Disks
Setup as required
- Default is:
		- boot disk: 150GB
		- Data Disk: 100GB

- Encryption managed by google

##### Network

>[!error] IMPORTANT
>Un-check: *Assign external IP address*
>
Caso não queira incorrer em Compliance problems!!!!

##### IAM and security
Use *Service Account Option*

>[!warning] Service Account
>Un-Check: * Use default Compute Engine service account*
>Use:
>`sa-verai-service-account@ford-d7910739734ba7b122bc0c0b.iam.gserviceaccount.com`

Cretate the new instance
