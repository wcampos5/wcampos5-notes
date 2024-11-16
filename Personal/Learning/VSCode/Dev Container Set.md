#devcontainer
- Install Docker
	- Config Docker
		- Set Proxy
			http and https_proxy
			``http://internet.ford.com:83``
			no-proxy or bypass
			```localhost,127.0.0.1,.ford.com,.local,.testing,.internal,.googleapis.com,19.0.0.0/8,136.1.0.0/16,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16```
			
- VSCode
	- Proxy
		- make sure that proxy setting are getting from system variables: ``http_proxy`` e ``https_proxy``
	
- Install VSCode Extension
	- Dev Container
	- Docker
	- WSL2
- Config System Variables:
```

```





### Troubleshootings

![[ghcr_io_error.PNG]]


##### Tunneling socket could not be stablished
---

	Error happends when start VSCode devcontainer out of VPN
	
![[out_of_vpn_error.png]]

>[!success] Solution
>Connect to the VPN




