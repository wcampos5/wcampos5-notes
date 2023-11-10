##### DEV
Tekton Pipeline:
	Namespace: vdcc
	https://console-openshift-console.apps.pd103.caas.gcp.ford.com/pipelines/ns/vdcc

Manual Deployment
```
oc create -f vdcc-cbf-frontend/promotionpipelines/frontend-promote-qa-pipeline-run.yaml
```
##### QA
Tekton Pipeline:
	Namespace: vdcc
	https://console-openshift-console.apps.pd303.caas.gcp.ford.com/pipelines/ns/vdcc

 Manual Deployment
```
 oc create -f vdcc-cbf-frontend/promotionpipelines/frontend-promote-qa-pipeline-run.yaml
```

##### Prod
Tekton Pipeline:
	Namespace: vdcc
	https://console-openshift-console.apps.pd303.caas.gcp.ford.com/pipelines/ns/vdcc

Manual Deployment
```
oc create -f vdcc-cbf-frontend/promotionpipelines/frontend-promote-qa-pipeline-run.yaml
```


