##### Dev
Tekton Pipeline:
	Namespace: vdcc3-ext
	https://console-openshift-console.apps.pd303.caas.gcp.ford.com/tasks/ns/vdcc3-ext

Manual Deployment:

Edit vdcc-legacy-frontend.yaml then...
```
oc create -f C:\Wilson\Dev\VDCC\Project\Tekton\vdcc-ex-devops\pipeline-run\vdcc-promotion\manual_deployment\vdcc-legacy-frontend.yaml
```

##### QA
Tekton Pipeline:
	Namespace: vdcc3-ext
	https://console-openshift-console.apps.pd303.caas.gcp.ford.com/tasks/ns/vdcc3-ext

Manual Deployment:

Edit ===promote-vdcc-legacy-frontend-qa.yaml=== then...
```
oc create -f vdcc-legacy-frontend/promotepipelines/promote-vdcc-legacy-frontend-qa.yaml
```

##### PROD
Tekton Pipeline:
	Namespace: vdcc3-ext
	https://console-openshift-console.apps.pd303.caas.gcp.ford.com/tasks/ns/vdcc3-ext

Manual Deployment:

Edit ===promote-vdcc-legacy-frontend-prod.yaml=== then...
```
oc create -f vdcc-legacy-frontend/promotepipelines/promote-vdcc-legacy-frontend-prod.yaml
```