#Podman run
#Do this Everytime you connect to VPN
#https://github.ford.com/LocalDev/Containers/blob/master/CiscoAnyVPN-podman-machine.md

Get-NetAdapter | Where-Object { $_.InterfaceDescription -Match "Cisco AnyConnect" } | Set-NetIPInterface -InterfaceMetric 4000
Get-NetIPInterface -InterfaceAlias "vEthernet (WSL)" | Set-NetIPInterface -InterfaceMetric 1