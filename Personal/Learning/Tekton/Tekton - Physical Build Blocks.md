Tekton and Pipelines[^1]
***
#tekton #phisycalbuildingblocks
==Tekton is a set of Kubernets CRDs== - Custom Resources Definitions


![[Tekton_physical_building_blocks.png]]
###### Event Listener CRD
#eventlistener #triggerbinding #triggertemplate 
It listens for events like pull requests or commits on a Git Repository.
**Events are associated** with 2 other CRDs:
- TriggerBinding
	Captures parameters from the event that required to run pipeline.
- TriggerTemplate
	Takes the parameters from the TriggerBinding and associates them with the PipelineRun.
	
	Workflow -->
		When triggered by an event, the TriggerTemplate create a PipelineRun, passing along any parameters from the triggered event, or persistent storage, that the pipeline might need.
>[!success] PipelineRuns can be also created manually without use events


###### PipelineRun
#pipelinerun
It is what instantiates a pipeline.
Since it is responsible to manage a task it ==creates a 
	TaskRun== for each task,
		which in turn ==creates a Kubernets pod== for the task to run in.

	

###### Pipeline
A pipeline is a collection of tasks.
When the pipeline executes, the ==PipelineRun is responsible for managing the tasks==

###### Tasks
#task
It can run in parallel (default), or they can run 
serially if you specify **dependencies** between them.
Task is a collection of steps.

###### TaskRun
Created by a PipelineRun to manage the tasks.
TaskRun creates a Kubernets POD for the task to run in.

##### Step
#step 
Run in the sequence specified in the task.

###### Kubernets POD
Created by TaskRun
All step for a task run in the same POD

###### Persistent Volume Claim -  PVC
Usually PVC is created and the storage is attached to all the PODs,
so that they can share artifacts throughout the pipeline.

This allows the pipeline to run different task at the same time.

Most pipelines require some FORM of persistent storage.

Since step are always running in series, the containers will be created one at a time.

![[Tekton_physical_building_blocks.png]]


***
[[Tekton - Overview]] | [[Creating a new Pipeline - Task File]]

[^1]: [Tekton and Pipelines](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/OpMLt/introduction-to-tekton-and-pipelines)
