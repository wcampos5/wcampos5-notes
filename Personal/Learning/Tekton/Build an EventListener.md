EventListener[^1]
***
#eventlistener

#### EventListener

Create a ==new el-cd-listener.yaml== YAML (know as Kubernets manifest) file.
#createeventlistener #builfeventlistener

>[!example] Final el-cd-listener.yaml file

```yaml
apiVersion: tekton.dev/v1beta1
kind: EventListener
metadata: 
	name: cd-listener
spec:
	serviceAccountName: pipeline #Pipeline will run under this SA.
	triggers: 
		- binding:
			name: cd-binding
		  template:
			  name: cd-template
```

#### Specifications
1. ServiceAccountName
	#serviceaccount
	In the OpenShift, there is a preconfigured ServiceAccount named *"pipeline"* that is configured with the ==access control needed== to run a pipeline.

2. Specify the triggers to this EventListener, you specify a list of bindings inside the triggers session.
	Whenever this EventListener receives an event, the data will be passed to the binding *cd-binding*...
	#triggers 
```
spec:
	.
	triggers: 
		- binding:
			name: cd-binding
```

3. and then create a ==*template:==* session specify the TriggerTemplate in the session triggers.
The binding will marshal that data into the parameters needed for the trigger template *cd-template* and invoke that template.
```
spec:
	serviceAccountName: pipeline #Pipeline will run under this SA.
	triggers: 
		- binding:
			name: cd-binding
		  template:
			  name: cd-template
```


***
[[Tekton Triggers]] | [[Tekton TriggerBinding]]

[^1]: [EventListener](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/TEv7B/creating-tekton-triggers)