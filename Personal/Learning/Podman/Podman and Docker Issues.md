#dockerissues #podmanissues 
#### Error State
#proxy #listener
`starting services: initializing Docker API Proxy: setting up docker api proxy listener: open \\.\pipe\docker_engine: Access denied.`

![[proxy_listener_error.png]]

>[!success] Solution
>1 - Connect to the VPN
>***
2 - Windows Features:
>- Disable Hype-V
>- Disable Windows Hypervision Platform
>- Enable Virtual Machine Platform
>- Enable Windows Linux SubSystem
>- Upgrade WSL to version 2
>- Enable Container





