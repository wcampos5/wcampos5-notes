
Enable [[Proxy On-Off | proxy]]
```
proxy on
```

Restart the PowerShell session to validate
```
echo $Env:https_proxy;echo $Env:http_proxy
```

> [!Warning] Connect to VPN

> [!warning]
> Execute the VPN Any Time
> 
```
C:\Wilson\Dev\VDCC\DevOps\Tools\PowerShell_Scripts\podman_ciscoanyvpn.ps1
```

Start the Podman
```
podman machine start
```

#### Tags
***
#podmanstart #podmancli #podmanstartup