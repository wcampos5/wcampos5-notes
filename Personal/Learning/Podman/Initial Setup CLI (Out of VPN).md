Requirements:
[[Initial Setup Podman Desktop]]
Reference:
- [CiscoAnyVPN-podman-machine](https://github.ford.com/LocalDev/Containers/blob/master/CiscoAnyVPN-podman-machine.md)
***


To run ===Podman CLI=== to get outside images:

**Unset** system/user **[[Proxy On-Off | proxy]] variables**
*PowerShell or Windows prompt*
```
proxy off
```

Close Podman Desktop and remove it from taskbar (If you didn't yet)
![[podman_desktop_taskbar.png]]

===First time setup only=== (otherwise go to the next command)
```
podman machine init
```

> [!failure] If you get the below error (Try to execute ON VPN)
> Error: head request failed: https://github.com/containers/podman-wsl-fedora/releases/latest/download/rootfs.tar.xz: Head "https://github.com/containers/podman-wsl-fedora/releases/latest/download/rootfs.tar.xz": proxyconnect tcp: dial tcp: lookup internet.ford.com: no such host


*PowerShell*
```
podman machine start
```

Podman start in ===rootless mode===
If you need to interact with port < 1024 you need to set to rootful
*Optional command*
```
podman machine set --rootful
```

By default the API forwarding listening on: npipe:////./pipe/docker_engine,
change it to podman-machine-default.

Set DOCKER_HOST variable
PowerShell
```
$Env:DOCKER_HOST = 'npipe:////./pipe/podman-machine-default'
```

Or command prompt
```
set DOCKER_HOST=npipe:////./pipe/podman-machine-default
```



#### Setting the resolv. conf and wsl.conf files

> [!note]
> because `podman-machine-default` WSL currently only understands ONE DNS server So if podman is configured for use on the VPN you **must** be on the VPN to use podman. But the below setup ===must be done out of VPN.===

With the podman machine default STOPPED

Run the podman machine using wsl
```
wsl -d podman-machine-default
```

#### WSL.conf
Create wsl.conf from resolv.conf
```
sudo cp /etc/resolv.conf /etc/wsl.conf
```
Replace the content
```
sudo sh -c 'echo "[network] generateResolvConf = false" > /etc/wsl.conf'
```
Restart the podman-machine-default WSL ===to able to modify the resolv.conf===
`exit` (twice)
stop podman machine
```
wsl --shutdown
```
restart podman
```
podman machine start
```
>[!note] Ensure that podman desktop is not running



#### Resolv.conf

```
wsl -d podman-machine-default
```

Removing the Symbolic link if it exists
```
sudo unlink /etc/resolv.conf
```
Backupthe original file
```
sudo cp /etc/resolv.conf /etc/resolv.conf.original
```
Update /etc/resolv.conf
```
sudo sh -c 'echo "nameserver 19.69.0.246" > /etc/resolv.conf'
```

Restart the podman-machine-default ===to changes take effect===

`exit` (twice)
stop podman machine
```
wsl --shutdown
```


#### Proxy Settings

Configure the Proxy
Go to Settings (left bottom gear image)...
Proxy (Left side menu), then enable Proxy Settings/
![[podman_proxy_setting.png]]

### Testing

> [!Warning] Connect to VPN
#### Do this Every time you connect to VPN

Save *podman_ciscoanyvpn.ps1* locally, then call it through PowerShell
![[podman_ciscoanyvpn.ps1]]

podman_ciscoanyvpn.ps1 call example:
```
C:\Wilson\Dev\VDCC\DevOps\Tools\PowerShell_Scripts\podman_ciscoanyvpn.ps1
```

Call quay podman image to test outside access
```
podman pull quay.io/podman/hello
```


##### Tags
***
#podmansetup #clisetup





