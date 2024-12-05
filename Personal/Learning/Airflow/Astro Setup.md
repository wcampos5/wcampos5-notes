Documentation[^1]
***
#astro #airflow #setup

#### Install Astro
```PowerShell
winget install -e --id Astronomer.Astro
```

#### Clone the astro-gcp-mmota repo from ...

#### Update Requirements version removing versions

#### Dockerfile

Image from quay
`FROM quay.io/astronomer/astro-runtime:7.4.1`

Service Account
`ARG PIPELINE_SA="sa-dataproc-batch@ford-c94b9394d330596dadb81271.iam.gserviceaccount.com"`

#### Update
/include/codegeneration/`dataproc_dag_template_jinja.py`
	comment:
	`#impersonation_chain=Variable.get("impersonation_chain")`

Run the PowerShell Script

#### Run the Script:
`PowerShellStartConfig_ps1.ps1`

#### Execute the command
`astro dev start` been in the repo


Open in the local host
``
http://localhost:8080/

![[airflow_login.png]]


#### Q&A

Error
astro : The term 'astro' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
At line:1 char:1                                                                         
+ astro dev init                                                                         
+ ~~~~~                                                                                  
    + CategoryInfo          : ObjectNotFound: (astro:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException 

Solution:
Restart the terminal


Error:
`Error: error building, (re)creating or starting project containers: Error response from daemon: Ports are not available: exposing port TCP 127.0.0.1:5432 -> 0.0.0.0:0: listen tcp 127.0.0.1:5432: bind: An attempt was made to access a socket in a way forbidden by its access permissions.`

Solution:
Kill the background running Postgres process





***
[[]] | [[]]
#### Tags
***
[^1]: [Documentation](https://pages.github.ford.com/cmsa/astronomer-docs/)
