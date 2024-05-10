Running Pipeline[^1]
***

#### Running the Pipeline

Before YouTube you need to locally expose the event listener.
Normally, you need to set up an Ingress (==How to do that==)to expose the EventListener as an endpoint.

But the purpose of this quick check, you can use the Kubernetes port-forward command.
#exposeport #expose #forward
```bash
kubectl pot-forward service/el-cd-listener 8090:8080
```

>[!warning] Normally you need to set up an **Ingress** to expose an end point


This above forwards the port the EventListener is listening on 8080, to any port. you want, in this case 8090.

Next...

Use curl command and POST to localhost:8090
#curl #curltriggerpipeline
>[!example] curl command complete

```sh
curl -X POST http://localhost:8090 \
-H 'Content Type: application/json' \
-d '{"repositoroty":{"url":"https://github.com/rofrano/tekton-testing"}}'
```

###### where:
###### Content-Type
Set the Content-Type in the header to specify the payload that you are sending... *application/json*

```
curl -X POST http://localhost:8090 \
-H 'Content Type: application/json' \
```

###### Parameters
-d to send data in JSON format

```
curl -X POST http://localhost:8090 \
-H 'Content Type: application/json' \
-d '{"repositoroty":{"url":"https://github.com/rofrano/tekton-testing"}}'
```

TriggerBinding will get ==repository== parameter from: *body.==repository.url==* attributes.






***
[[Parameter Workflow]] | [[Using Tekton Hub Catalog]]

[^1]: [Running Pipeline](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/TEv7B/creating-tekton-triggers)