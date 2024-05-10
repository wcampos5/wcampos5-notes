kubectl[^1]
***
#kubectl #addtask #addpipeline #createtask #createpipeline #apply

#### Run the pipeline using the mini kube

```bash
kubectl apply -f tasks.yaml
```
_task.tekton.dev/checkout created_

```bash
kubectl apply -f pipeline.yaml
```
pipeline.tekton.dev/pipeline created



#### Listing pipelines
#list #listpipelines #listing
Since Tekton resources are Kubernets resources, you can check pipeline definition using 
```
kubectl get pipelines
```

![[kuctl_get_pipelines.png]]








***
[[Creating a new Pipeline - Pipeline file]] | [[Tekton - Run the Pipeline]]

[^1]: [kubectl](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/0Srjv/building-a-tekton-pipeline)