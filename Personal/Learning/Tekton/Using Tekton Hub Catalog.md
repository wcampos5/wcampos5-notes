Tekton Catalog[^1]
***
Tekton catalog or Tekton Hub can be find at:
[hub tekton dev](https://hub.tekton.dev/) #tektonhub

Install task from the Tekton Hub
#taskinstall #task

```sh
tkn hub install task <task_name>
```

#### Workspace
#workspace #output
It is a shared volume that each task has access to.
This allows them to share data through this volume.

==Workspaces are declared in the pipelineRun==
They are implemented as a **PesistentVolumeClaim** ==PVC==

![[persistent_volume_claim.png]]

#### Defining a Workspace

1. Create a Persistent Volume Claim
#persistentvolumeclaim #volumeclaim #pvc 

```yaml
apiVersion: tekton.dev/v1beta1
kind: PersistentVolumeClaim
metadata: 
	name: pipelinerun-pvc
spec:
	StorageClassName: default
	resources:
		requests:
			storage: 1Gi
	volumeMount: FileSystem
	accessMode:
		- ReadWriteOnce
```

2. Create a pipelineRun
#pipelinerun #pipelineruncreate 

```yaml
apiVersion: tekton.dev/v1beta1
kind: PipelineRun
metadata: 
	generateName: pipeline-run-
spec:
	pipelineRef:
		name: cd-pipeline
	workspaces:
		- name: pipeline-workspace
		  persistentVolumeClaim:
			  claimName: pipelinerun-pvc
	params:
		- name: repo-url
		  value: "$(tt.params.repo)"
```

==claimName== in the PipelineRun ==is used to link== to  the ==PVC name== property


#### Pipeline with Task from Tekton Hub example
#tektonhub #pipeline #workspace 

Pipeline example below

![[pipeline_hub_task_example.png]]

The Hub Git Clone from the Hub requires 2 inputs:

- *url* of a repo to be cloned:
The **Pipeline** will receive it in the params through the workspace?

- *output* Workspace
Here the ==tasks section== has ==workspaces== that is ==linked with== the ==Pipeline Workspaces name== property


***
[[Tekton - Running the Pipeline]] | [[Tekton - Building an Image]]
#### Tags
***
[^1]: [Tekton Catalog](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/XRGpG/leveraging-the-tekton-catalog)