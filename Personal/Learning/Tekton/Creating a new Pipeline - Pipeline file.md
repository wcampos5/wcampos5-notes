Pipeline creation[^1]
***

Acc. to [[Tekton - Physical Build Blocks |prior explanation]] we are going to create a **new pipeline** from bottom to top Tasks, Steps...and so on.

![[Tekton_physical_building_blocks.png]]

#### Pipeline file

Create a ==new Pipeline== YAML (know as Kubernets manifest) file, to hold our Tasks.
#pipeline  #new

>[!example] Final pipeline.yam file

```yaml
apiVersion: tekton.dev/b1beta1
kind: Pipeline
metadata: 
	name: pipeline
spec:
	params:
		- name: repo-url
	tasks:
		- name: clone
		  taskRef: 
			  name: checout
		  params:
			- name: repo-url
			  value: "$(params.repo-url)"]


```

1. Every manifest must defines API version to use:
#taskfile #tasktemplate #task
```
apiVersion: tekton.dev/b1beta1

	
```

2. Tekton defines new CRDs, you need to tell Kubernets what kind resource to use
```
kind: Pipeline
```

3. You name give a task name into *metadata* section
```
metadata: 
	name: pipeline
```

4. Start the Specification session
```
spec:
```
5. Give params name repo-url
 ```
	 
spec:
	params:
		- name: repo-url
```

6.  Start Tasks: session declaration
```
.
	.
spec:
	params:
		- name: repo-url
	tasks:
		- name: clone
```

>[!error] the dash (-) indicates that is a LIST you can have multiple tasks or params in this case

7. Here is where you ==REFERENCE  the Task== that you already written ```taskRef```

```

	tasks:
		- name: clone
		  taskRef:
			name: checkout
```

8. As far that you know Checkout Task requires a parameter, so you declare it here tasks params session... name and value.

```
	tasks:
		- name: clone
		  taskRef: 
			  name: checout
		  params:
			- name: repo-url
			  value: "$(params.repo-url)"]
```

