#pullimage #pull #checklist

```PowerShell
docker pull image:tag
```

- [ ] Create the persistent local directory to map as bind volume
```PowerShell
New-Item -ItemType Directory -Path c:\Temp\Lixo\docker-data\name
```
>[!success] Binding a volume
>`docker run -dti --mount type=bind,src=/data/imagedatadir,dst=/containerdatadir image`
>or
>`docker run -dti -v /data/imagedatadir:/containerdatadir image:tag`



Or

- [ ] Create a docker volume to manage the persistent storage
```PowerShell
docker volume create volume_name
```
>[!success] Mounting a Volume
>`docker run -dti --name alias_name --mount type=volume,src=volume_name,dst=/containerdatadir image:tag`


#### Ports
- [ ] Define the forward port that will be utilized
###### Command to map the port
`-p host:container`

Example for MySQL
`-p 3306:3306`