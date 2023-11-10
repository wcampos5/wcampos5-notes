
Setup proxy:
	Powershell
		http
		`$env:http_proxy="internet.ford.com"`
			
		https
		$env:https_proxy="internet.ford.com"
		

Must be connected into VPN
	Run this script every time you have disconnected from VPN
	 ![[podman_ciscoanyvpn.ps1]]
Search desired image:
`C:>search busybox`

Run the Image:
`C:>podman run -it docker.io/library/busybox bash` 
>	*-i* -> interactive
>	*-t* -> TTY
>	*bash* -> at the end of the command to request a bash terminal
>	
>This will download the image from repository docker.io and then start the container, 
>the option -t will provide an terminal as input.
>`return / `#`

Use cases
	building a Nginx web server on top of a Debian base image using the Dockerfile maintained  by Nginx and published in GitHub.
C:>`podman build -t nginx https://git.io/Jf8ol`


Once, the image build completes, it’s easy to run the new image from our local cache:
`podman run -d -p8080:80 nginx`
>-d -> Run container in background and print container ID

	`curl localhost:8080`
	
	

