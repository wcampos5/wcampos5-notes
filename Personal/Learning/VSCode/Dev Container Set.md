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


#### Tunneling socket could not be stablished
---

	Error happends when start VSCode devcontainer out of VPN
	
![[out_of_vpn_error.png]]

>[!success] Solution
>Connect to the VPN and log in the github.com with the cdsid_ford user


***

#### Build/Rebuild Dev Container Errors

##### 1. ERROR resolve image config for docker-image://docker.io/docker/docker  0.0s
#dockerioissue #imagedockerissue #resolveimage

```
[5932 ms] Start: Run: docker buildx build --load --build-arg BUILDKIT_INLINE_CACHE=1 -f C:\Users\wcampos5\AppData\Local\Temp\devcontainercli\container-features\0.72.0-1734696408996\Dockerfile-with-features -t vsc-gcp-ol-prog-9c55a25793852c3f288a23ef348a5ead046c5d2389896b2ca3eee5c841f19820 --target dev_containers_target_stage --build-arg http_proxy=http://internet.ford.com:83 --build-arg https_proxy=http://internet.ford.com:83 --build-arg DOCKER_BUILDKIT=0 --build-context dev_containers_feature_content_source=C:\Users\wcampos5\AppData\Local\Temp\devcontainercli\container-features\0.72.0-1734696408996 --build-arg _DEV_CONTAINERS_BASE_IMAGE=dev_container_auto_added_stage_label --build-arg _DEV_CONTAINERS_IMAGE_USER=appuser --build-arg _DEV_CONTAINERS_FEATURE_CONTENT_SOURCE=dev_container_feature_content_temp c:\Wilson\PAE\Repositories\gcp-ol-prog
2024/12/20 09:06:51 http2: server: error reading preface from client //./pipe/do
cker_engine: file has already been closed
[+] Building 0.0s (0/0)  docker:default
2024/12/20 09:06:52 http2: server: error reading preface from client //./pipe/do
[+] Building 0.1s (2/2) FINISHED                                 docker:default
 => [internal] load build definition from Dockerfile-with-features         0.0s
 => => transferring dockerfile: 6.25kB                                     0.0s
 => ERROR resolve image config for docker-image://docker.io/docker/docker  0.0s
------
 > resolve image config for docker-image://docker.io/docker/dockerfile:1.4:
------
Dockerfile-with-features:1
```

>[!success] Solution
>VSCode uses proxy variable system.
>Make sure you have http_proxy and https_proxy enabled
>Try turn it on through the scripts: `proxy on`
>>**Additional Check List:**
>>:obs_checkmark:  Docker up and running
>>:obs_checkmark: Chrome Settings proxy Aut. Detect Seeting _On_










