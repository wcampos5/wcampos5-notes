SRE Metrics[^1]
Default Library Configuration[^2]
SRE Metrics Library Source^3
***
#sre #metrics #prometheus #sreproperties #prometheusproperties
## Compatibility

|                                                 |                   |                   |                   |                   |
| ----------------------------------------------- | ----------------- | ----------------- | ----------------- | ----------------- |
| SRE Metrics Release                             | Spring-boot:3.1.X | Spring-boot:3.0.X | Spring-boot:2.7.X | Spring-boot:2.5.X |
| 3.0.5                                           | ✅                 | ✅                 | ❌                 | ❌                 |
| 3.0.4 (Critical bug found! Please upgrade ASAP) | ✅                 | ✅                 | ❌                 | ❌                 |
| 2.7.4 (Vulnerability patch)                     | ❌                 | ❌                 | ✅                 | ❌                 |
| 2.5.2                                           | ❌                 | ❌                 | ✅                 | ✅                 |

_build.gradle_

```
plugins {
    id 'org.springframework.boot' version '2.7.16'
}
```

```
repositories {
    maven { url "https://jfrog.ford.com/artifactory/public-maven-ford" }
}
```

```
implementation "com.ford.mpp.pe.sre:metrics:2.7.4"
```

>[!warning] Spring-boot vs SRE Metrics
>** Note: ** If you are still on Spring-boot 2.7.X, you will need to use sre metrics version 2.7.4. Spring-boot 2.7.X is EOL Nov 2023. Upgrading is strongly recommended
>
** Note: ** If you are still on Spring-boot 3.0.X, you will need to use sre metrics version 3.0.2+. Spring-boot 3.0.X is EOL Nov 2023. Upgrading is strongly recommended

_application.properties_

```java
# Enable production SRE metrics
pe.sre.metrics.enabled=true						
pe.sre.metrics.prometheus.pushgateway.enabled=true
pe.sre.metrics.prometheus.pushgateway.fallback_proxy.enabled=true
pe.sre.metrics.production=true
pe.sre.metrics.prometheus.service_name=pae-svc-telemetry-gcp-prod
management.metrics.export.prometheus.pushgateway.baseUrl=https://pushgateway.sre-metrics.ford.com
```

>[!info] pe.sre.metrics.enabled property
>In the event you would like to temporarily disable SRE Metrics library
>for troubleshooting reasons, you can set this property to ==_false_==.

>[!info] pe.sre.metrics.prometheus.pushgateway.enabled property
>Determines whether the application's metrics should be pushed.
>Default is ==_true_== for PCF and OC.

>[!info] pe.sre.metrics.prometheus.pushgateway.fallback_proxy.enabled
>Determines whether the library should attempt to fallback to Ford's 
>proxy server (i.e. internet.ford.com:83) if the connection to pushgateway cannot be established.

>[!error] ### pe.sre.metrics.production
>Boolean property that controls which backend environment instance your metrics is pushed to. Please ensure that you set the production flag to _true_ for **ONLY** production environments, and not for dev, qa, uat, or other pre-prod environments. Different environment instances vary when it comes to data retention and guarenteed uptime.
>>[!warning] This property is only applicable if _baseUrl_ is not set.

>[!info] pe.sre.metrics.prometheus.service_name
>General name of the service. 
>This will be used to group metrics together across multiple environments.
>
This name should **NOT** include any environment suffix; e.g. _healthnut_. If left unset, then the value defaults to _spring.application.name_ property, PCF app name, or the value "unknown" (in that precedence order).

>[!info] management.metrics.export.prometheus.pushgateway.baseUrl
>Pushgateway URL which your metrics are pushed to. 
>
>==If== this property is left ==blank==, then the library will determine and set the URL on your behalf based off the ==_production_ flag==. 
>>[!warning] It is recommended that you do not set this URL directly and let the library handle this for you.


***
[[]] | [[]]
#### Tags
***
[^1]: [SRE Metrics](https://github.ford.com/Platform-Enablement/sre_metrics/blob/development/docs/setup.md#production-deployments-only)

[^2]: [Default Library Configuration](https://github.ford.com/Platform-Enablement/sre_metrics/blob/development/docs/setup-configuration.md)

[^3] [SRE Metrics Library Source](https://github.ford.com/Platform-Enablement/sre_metrics/blob/main/docs/README.md)