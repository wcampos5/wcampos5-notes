
To run ===Podman CLI=== to get outside images:

**Unset** system/user **[[Proxy On-Off | proxy]] variables**
*PowerShell or Windows prompt*
```
proxy
```

Close Podman Desktop and remove it from taskbar

*PowerShell*
```
podman machine start
```


Set DOCKER_HOST variable
PowerShell
```
$Env:DOCKER_HOST = 'npipe:////./pipe/podman-machine-default'
```

Or command prompt
```
set DOCKER_HOST=npipe:////./pipe/podman-machine-default
```

