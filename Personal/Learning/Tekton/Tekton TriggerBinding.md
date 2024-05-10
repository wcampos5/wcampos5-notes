TriggerBinding[^1]
***
#tekton #triggerbinding 
#### TriggerBinding

Create a ==new triggerbinding.yaml== YAML (know as Kubernets manifest) file.
#createeventlistener #builfeventlistener

>[!example] Final triggerbinding.yaml file

>[!warning] metadata name: MUST MATCH name in EventListener

```yaml
apiVersion: tekton.dev/v1beta1
kind: TriggerBinding
metadata: 
	name: cd-binding #MUST MATCH name in EL
spec:
	params:
		- name: repository
		  value: "$(body.repository.url)"
		- name: branch
		  value: "$(body.ref)"
	
```

#### Specifications
###### List of Params

1. Repository
This is very specific to the **body off the incoming event**.
*JSON coming from the body of a Github event where to pull this parameters from.*
```yaml
spec:
	params:
		- name: repository
		  value: "$(body.repository.url)"
	
```

2. Branch
Values comes from body

```yaml
spec:
	params:
	#	- name: repository
	#	  value: "$(body.repository.url)"
		- name: branch
		  value: "$(body.ref)"
```




***
[[Build an EventListener]] | [[Tekton TriggerTemplate]]

[^1]: [TriggerBinding](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/TEv7B/creating-tekton-triggers)