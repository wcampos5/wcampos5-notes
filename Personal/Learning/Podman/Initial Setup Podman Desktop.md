Requirements:
[Minimal Install](https://github.ford.com/LocalDev/MinimalInstall)

Reference: 
[Containers](https://github.ford.com/LocalDev/Containers/)
***

#### Starting point

===Disconnected from VPN===

===Turn Off the [[Proxy On-Off | proxy]]===
===Re-start shell session===
run the below command to check if the proxy variables are empty:
```
echo $Env:https_proxy;echo $Env:http_proxy
```


Download the latest Desktop Podman version
[https://podman.io/](https://podman.io/)

Update the WSL
```
wsl --update
```

Install the Podman Desktop

![[podman_install_screen.png]]

Check on the WSL installation
![[podman_install_screen_WSL.png]]

===Reboot your Machine===

Open Podman Desktop
- Run Podman from Desktop

#### ### Adding Podman CLI login (Registry.ford.com)

Login to [registry.ford.com](https://registry.ford.com/repository/)
![[quay_login_screen.png]]

Go to User profile->Accont Settings
![[quay_account_settings.png]]

Pick ***Generate Encrypted Password***

Select **Podman Login** in the left side menu, copy the generated login string to clipboard.
![[quay_generated_podman_login.png]]

Paste it in the PowerShell session
	*podman login -u="wcampos5" -p="TYc8HAGkOT...*

At this point, with proxy disabled you are able to get external (like quay.io/podman/hello)




After Podman Desktop successfully installed...
Make sure to **close the Podman Desktop**.
Right click over Podman on the taskbar to **Quit** it.
![[podman_desktop_taskbar.png]]

Go to [[Initial Setup CLI (Out of VPN)]] to continue the process...

##### Tags
***
#podmansetup #desktopsetup #podmandesktop
