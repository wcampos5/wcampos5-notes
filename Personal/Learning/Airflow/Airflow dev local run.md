Ref[^1]
***
#airflowmanualrun #airflowlocal #airflowdev #airflowstartup

#### Requirements
Have the [[Astro Setup]] done.


#### Run in Dev

Open the Docker Application

Clone the repo: [m1-aim-pae](https://github.ford.com/gdia-prognostics/m1-aim-pae)

Open folder project in the _Visual Studio Code_

Change to the ` cd astro` folder

Execute the script: astro_authentication.ps1

```Powershell
$env:GOOGLE_APPLICATION_CREDENTIALS="$HOME/AppData/Roaming/gcloud/application_default_credentials.json"

$env:http_proxy = 'http://internet.ford.com:83'
$env:https_proxy = 'http://internet.ford.com:83'
$env:no_proxy = 'localhost,127.0.0.1,.ford.com,.local,.testing,.internal,192.168.0.0/16'
$env:HTTP_PROXY = 'http://internet.ford.com:83'
$env:HTTPS_PROXY = 'http://internet.ford.com:83'
$env:NO_PROXY = 'localhost,127.0.0.1,.ford.com,.local,.testing,.internal,192.168.0.0/16'

gcloud auth login --update-adc
gcloud config unset auth/impersonate_service_account

$env:GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth print-access-token)

gcloud config set project ford-666e9ca1b9bb35e73424cf75
```

In the _VS Code_ open a PowerShell terminal window and type:
#astrodevstart
```PowerShell
astro dev start
```

At final a new chrome will start in a localhost:8080 
>[!warn] If it fails re-open a chrome window at:
>http://localhost:8080 

Use the default  _admin_ for:
- User 
- Password








***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)