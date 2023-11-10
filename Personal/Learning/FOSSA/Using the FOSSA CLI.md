Please note that FOSSA[^1] is running outside the Ford network and will require the machine the CLI is running on (whether that is Jenkins server or your own workstation) to have proxy settings setup in order to communicate with the FOSSA server.

#### Install FOSSA CLI Locally (on Windows)

Installing FOSSA locally[^2]
1. Execute the below command on the desired folder to bring fossa:
```
curl -OL https://www.nexus.ford.com/repository/jenkins_tools/fossacli/fossa_3.8.0_windows_amd64.zip
```

2. Unzip the fossa_3.8.0_windows_amd64.zip in the current desired folder

3. Add the current folder to your $Path System environment

***


Setup proxy for the current session
```
export http_proxy=http://internet.ford.com:83
```

```
export https_proxy=http://internet.ford.com:83
```

#### Getting FOSSA_API_KEY token

Go to [FOSSA](https://ford.fossa.com/projects)
Logged user -> Settings -> Integrations tab
	In the ***API*** left side menu
	Copy desired token (or create if necessary)
	![[Pasted image 20231023141343.png]]

Setup the FOSSA_API_KEY
```
$ export FOSSA_API_KEY={Paste the token here}
```


#### Executing FOSSA CLI Locally

	*fossa analyze -e https://ford.fossa.com -T Ford-Team -p repo branch --policy 'Website/Hosted Service Use'*

	Where Policies:
	POLICY_NAME is one of the 4 Policies defined in FOSSA (**Policy name must be quoted**)
	- "In-Vehicle Use"
	- "Mobile App Use"
	- "Website/Hosted Service Use"
	- “Internal Facing Use Only”

Example:
```
fossa analyze -e https://ford.fossa.com -T VDCC-52291 -p aim-insights-catalog-api -b gcp_master --policy 'Website/Hosted Service Use'
```




Notes:
***
Reference FOSSA Document

[^1]: [FOSSA Document](https://azureford.sharepoint.com/sites/SDE/SitePages/FOSSA/Using-The-FOSSA-CLI.aspx?web=1)

[FOSSA Github](https://github.ford.com/DevEnablement/pcfdev-guides/tree/master/fossa)

[^2]: [Install FOSSA locally](https://azureford.sharepoint.com/sites/SDE/SitePages/FOSSA/Install-FOSSA-CLI-On-Localhost.aspx)

