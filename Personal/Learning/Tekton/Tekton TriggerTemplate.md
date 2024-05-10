TriggerTemplate[^1]
***
#tekton #triggertemplate
#### TriggerTemplate

Create a ==new triggertemplate.yaml== YAML (know as Kubernets manifest) file.
#createtriggertemplate #builftriggertemplate

>[!example] Final triggertemplate.yaml file

>[!warning] metadata name: MUST MATCH name in EventListener

```yaml
apiVersion: tekton.dev/v1beta1
kind: TriggerTemplate
metadata: 
	name: cd-template #MUST MATCH name in EL
spec:
	params:
		- name: repository
		  description: The URL of the git repo
		  value: ""
		- name: branch
		  description:The branch to process
		  default: master
resourceTemplate:
	- apiVersion: tekton.dev/v1beta1
	  kind: PipelineRun
	  metadata:
		  generateName: cd-pipeline-run-
	  spec:
		  serviceAccountName: pipeline
		  pipelineRef:
			  name: cd-pipeline #Reference to pipeline you wanna
		  params:
			  - name: repo-url
			    value: $(tt.params.repository)
			  - name: branch
			    value: $(tt.params.branch)
			  
	  
	
```

#### Specifications
###### List of Params

1. Repository
*description:* It is used only for documentation purposes
default value will be used if the TriggerBinding don't pass any value.


```yaml
spec:
	params:
		- name: repository
		  description: The URL of the git repo
		  default: ""
	
```

2. Branch
Do the same for Branch param

```yaml
spec:
	params:
		#- name: repository
		#  description: The URL of the git repo
		#  value: ""
		- name: branch
		  description:The branch to process
		  default: master
```

#### Resource Template to be used

3. The resourceTemplate contains a PipelineRun resources.

	As the others CRD it has: *apiVersion* and *kind* and *metadata*
	*metadata*:
	You could give a *name* or use **generateName** to specify it partially and standardize it. This generate a unique ID ad append it to be part we supply.
```yaml
spec:
	params:
		- name: repository
		  description: The URL of the git repo
		  value: ""
		- name: branch
		  description:The branch to process
		  default: master
resourceTemplate:
	- apiVersion: tekton.dev/v1beta1
	  kind: PipelineRun
	  metadata:
		  generateName: cd-pipeline-run-
	  spec:
		  serviceAccountName: pipeline
		  pipelineRef:
			  name: cd-pipeline #Reference to pipeline you wanna
		  params:
			  - name: repo-url
			    value: $(tt.params.repository)
			  - name: branch
			    value: $(tt.params.branch)
```

#### Specifications for resourceTemplate

4. Add serviceAccountName, pipelineRef (must be prior created) within its *name* 
```yaml
spec:
	params:
		- name: repository
		  description: The URL of the git repo
		  value: ""
		- name: branch
		  description:The branch to process
		  default: master
resourceTemplate:
	- apiVersion: tekton.dev/v1beta1
	  kind: PipelineRun
	  metadata:
		  generateName: cd-pipeline-run-
	  spec:
		  serviceAccountName: pipeline
		  pipelineRef:
			  name: cd-pipeline #Reference to pipeline you wanna
		  params:
			  - name: repo-url
			    value: $(tt.params.repository)
			  - name: branch
			    value: $(tt.params.branch)
```

5. Required params by this pipeline:
- Repository
	We are using a different name here because we need to use the name that is specified by the pipeline you are calling.
	The pipeline has defined this as "repo-url" so that's what you need to pass in.
	We get this value from params section of TriggerTemplate, so we need to reference it as
	```
	$(tt.params.repository)
	```
>[!success] Parameter names do not have to match as long as you can map them

- Branch
```yaml
spec:
	params:
		- name: repository
		  description: The URL of the git repo
		  value: ""
		- name: branch
		  description:The branch to process
		  default: master
resourceTemplate:
	- apiVersion: tekton.dev/v1beta1
	  kind: PipelineRun
	  metadata:
		  generateName: cd-pipeline-run-
	  spec:
		  serviceAccountName: pipeline
		  pipelineRef:
			  name: cd-pipeline #Reference to pipeline you wanna
		  params:
			  - name: repo-url
			    value: $(tt.params.repository)
			  - name: branch
			    value: $(tt.params.branch)
```








***
[[Tekton TriggerBinding]] | [[Parameter Workflow]]

[^1]: [TriggerTemplate](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/TEv7B/creating-tekton-triggers)