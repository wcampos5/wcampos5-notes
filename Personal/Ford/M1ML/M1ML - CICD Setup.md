
CICD[^1]
***
#### PowerShell Modules  and Helpers
`TektonCatalog`
`mach1ml-tkn-helper`

#### Composition:
- Terraform IAC
- GCP Integration
_These tasks perform authentication, validation, and ultimately deploy your infrastructure_


#### Setup
#m1mlsetup #mach1ml-tkn-helper #helper
***

###### Verify PowerShell Version
```PowerShell
$PSVersionTable
```
>[!info] Note: The table specifies PowerShell v7, which is required to use mach1ml-tkn-helper.
>[PowerShell 7 Microsoft Installation](https://docs.microsoft.com/en-us/shows/it-ops-talk/how-to-install-powershell-7)

_If you are in 5.1.x version try to type:_ `pwsh`

###### Installing mach1ml-tkn-helper[¶](https://pages.github.ford.com/Mach1ML-2-0/Mach1ML-Docs/devops/cicd_register_and_install/#installing-mach1ml-tkn-helper "Permanent link")

- Register the gsoutils Repo: (**User must be on VPN**)
```PowerShell
Register-PSRepository -Name gsoutils -SourceLocation "https://www.gsoutils.ford.com/powershell/nuget"  -InstallationPolicy Trusted
```

- Install `mach1ml-tkn-helper`:
```PowerShell
Install-Module mach1ml-tkn-helper -Repository gsoutils -Force
```


#### Getting Help
***
How to list `mach1ml-tkn-helper` public functions:
```PowerShell
Get-Command -module mach1ml-tkn-helper
```

How to Get-Help for `mach1ml-tkn-helper` commands:
```PowerShell
Get-Help Regenerate
or
Get-Help Regenerate -Full
```


***
[[]] | [[]]

***
[^1]: [CICD](https://pages.github.ford.com/Mach1ML-2-0/Mach1ML-Docs/tutorial/config/devops/)