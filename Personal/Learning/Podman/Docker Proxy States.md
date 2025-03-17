#proxyerros


>[!warning] 🔥 OUTSIDE docker.io/library/ pull Worked
>**Worked** inside VPN, **without** System Proxy setting, Chrome Proxy Script Settings or Chrome Detect 

| **VS System <br>Proxy Settings** | **Chome <br>Proxy Detect Settings** | Use Script | **VPN Status** | Error            |
| -------------------------------- | ----------------------------------- | ---------- | -------------- | ---------------- |
| OFF                              | OFF                                 | OFF        | OFF            | #dockerpullerror |
| OFF                              | OFF                                 | OFF        | ON             | 👍 for docker.oi |
| OFF                              | ON                                  | OFF        | OFF            | #dockerpullerror |
| ON                               | ON                                  | ON         | OFF            | #dockerpullerror |
| ON                               | ON                                  | OFF        | OFF            | #dockerpullerror |
| OFF                              | ON                                  | OFF        | ON             | #missingprx      |
| ON                               | ON                                  | OFF        | ON             | #missingprx      |
| ON                               | ON                                  | ON         | ON             | #missingprx      |


#### Known Errors:

##### Docker Register Login

###### Missing VPN Connection
---
#registry

```
Error response from daemon: Get "https://registry.ford.com/v2/": writing response to registry.ford.com:443: resolving internet.ford.com: lookup internet.ford.com: no such host
```


##### Docker Pull

###### Missing VPN Connection
---
#dockerpullerror

```
Error response from daemon: Get "https://registry-1.docker.io/v2/": writing response to registry-1.docker.io:443: resolving internet.ford.com: lookup internet.ford.com: no such host
```

###### VPN On | Missing System Proxy
#missingprx 

```
error pulling image configuration: download failed after attempts=6: dialing production.cloudflare.docker.com:443 container via direct connection because matches app settings exclude: resolving host production.cloudflare.docker.com: lookup production.cloudflare.docker.com: no such host
```



