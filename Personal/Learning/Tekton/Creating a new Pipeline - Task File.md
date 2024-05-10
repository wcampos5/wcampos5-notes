Pipeline creation[^1]
***

Acc. to [[Tekton - Physical Build Blocks |prior explanation]] we are going to create a **new pipeline** from bottom to top Tasks, Steps...and so on.

![[Tekton_physical_building_blocks.png]]

#### Task file

Create a ==new task.yaml== YAML (know as Kubernets manifest) file, to hold our steps.
#task #step #new

>[!example] Final gitclone.yaml file

```yaml
apiVersion: tekton.dev/b1beta1
kind: Task
metadata: 
	name: checkout
spec:
	params:
		- name: repo-url
			description: The URL of the git repo to clone
			type: string
	steps:
		- name: checkout
		image: bitname/git:latest
		command: [git]
		args: ["clone","$(params.repo-url)"]


```

1. Every manifest must defines API version to use:
#taskfile #tasktemplate #task
```
apiVersion: tekton.dev/v1beta1	
```

2. Tekton defines new CRDs, you need to tell Kubernets what kind resource to use
```
kind: Task
```

3. You need to give a task name into *metadata* section
```
metadata: 
	name: checkout
```

4. Start the Specification session
```
spec:
```
 5. As a task is a collection of steps, let setup one step inside of our Specification and give it a name
 ```
 spec:
	 steps:
		 - name: checkout
```

==Remember that step is contained into a Task and the Task runs into a POD and every tasks run into a new Container inside that POD 

![[Task_step_pod_container_workstream.png]]

6. Let's define  in our step session which image we will use to create that Container.
(In this case the image MUST have git Cliente Installed)
```
steps:
		 - name: checkout
		   image: bitname/git:latest
```

7. Define the command that will run inside that Container

```
steps:
		 - ...
		   .
		   command: [git]
		  
```

8. Pass the argument to the command...
```
steps:
		 - ...
		   .
		   command: [git]
		   args: ["clone"]
```

>[!warning] Ops there a problem we need 2 argument to run this command
>We need to pass the URL as argument, but currently we don't have

9. How to solve this?
>[!success] Move *steps * section down
>We need to move the *steps: * section down to have some room (space in between) and them **add params** inside the *spec: *session

```
spec:
	params:
	
	 steps:
		 - ...
```
 
 10. Give params name repo-url
 ```
 spec:
	params:
		- name: repo-url

	steps:
```

11. You can give the description and the return type to help debug and understanding
```
spec:
	params:
		- name: repo-url
		  description: The URL of the git repo to clone
		  type: string

	steps:
```

12. **Now we can go in the arguments** and pass it in the message to **args** in the **steps:** section.
    How do I reference it? ```"$(params.variableName)"```
```
	.
	.
	steps:
			 - ...
			   .
			   command: [git]
			   args: ["clone","$(params.repo-url)"]
```
    


[[Tekton - Physical Build Blocks]] | [[Creating a new Pipeline - Pipeline file]]

[^1]: [Pipeline creation](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/0Srjv/building-a-tekton-pipeline)