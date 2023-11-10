Internal access reference:
[Regional Internal Load balancer ILB](https://serverlesshub.ford.com/cloudrun/guides/regional_ilb/overview/)

![[Pasted image 20230627104051.png]]

#### External access

### Certify that you are member in the FIM Group:
 NetOps-DNS-CC-Submitter
	
	 1. Requesting NetOps-DNS-CC-Submitter
[netops](https://tools.netops.ford.com/dns/)
![[Pasted image 20230621095605.png]]

 ![[Pasted image 20230621095703.png]]
	
	Click over "Click Here"
	
	![[Pasted image 20230621100658.png]]
![[Pasted image 20230621101000.png]]
### DNS Availability
Search for the desired domain to see if it is available at:
[Ford DNS Search Tool](https://tools.netops.ford.com/dns/search.cgi)

![[./Ford DNS Lookup.png]]


### SSL Certificate creation
Create a new SSL certificate (must be LL6+ to create it) at:
[SSL Certificate creation - Certman](https://www.certman.ford.com/SSL/default.aspx)

Use openssl to generate the .csr and .key files.

In your wsl/linux term:
```bash
openssl req -new -newkey rsa:2048 -nodes -out yourdomain.ford.com.csr -keyout yourdomain.ford.com.key -subj "/C=US/ST=Michigan/L=Dearborn/O=Ford Motor Company/OU=IT/CN=yourdomain.ford.com"
```

### Add the Certificate in Secret Manager
Add the Certificate and Private Key to Secret Manager
[Go to specific Google Secret Manager of the project](#) 
Create the two secret managements:
AIM Sample:

![[ssl_key.png]]

Labeled it to the specific URL:

![[aim_sample_cert_and_key.png]]


Update the app/terraform (or folder that set the _private_key_ and _certificate_ variables)

![[certificate_private_key_update.png]]


### Adicionar o dominio no ADSF Reg
[ADSF Self Service](https://www.adfsreg.ford.com/)




To create a new URL in GCP (Google Cloud Platform), you can follow these steps:

1. Login to your GCP account and open the Cloud Console.
	1. _Who own the VDCC GCP Account?_
	
2. Navigate to the "Cloud Functions" page.
3. Click the "Create Function" button.
4. Enter a name for your function and select the "HTTP" trigger type.
5. In the "Source Code" section, write the code for your function that will handle the incoming HTTP requests.
6. In the "Testing" section, you can test your function by entering sample HTTP requests and viewing the response.
7. Once you're satisfied with your function, click the "Create" button.

Your new URL will be created and you can start using it to handle incoming HTTP requests.



-----------------------------------------------------------------------------
Raw info:

Domain creation
Who?
Papp, Timothy (T.) <tpapp4@ford.com>

Boss
mmiddlet@ford.com

Search DNS's
https://tools.netops.ford.com/dns/search.cgi


Create the SSL
openssl req -new -newkey rsa:2048 -nodes -out aim.ford.com.csr -keyout aim.ford.com.key -subj "/C=US/ST=Michigan/L=Dearborn/O=Ford Motor Company/OU=IT/CN=aim.ford.com"

cat generated_file.csr |pbcopy 
copy into Certificate Signing Request

generated_file.key will be used in the Load Balancer creation


docs.gcp.ford.com  - General Docs



### Tags
#url #ssl #certificate