Building Image[^1]
***
#build #image #buildimage

1. List tasks installed on the cluster
```
tkn clustertask ls
```

2. If not, looking for in the Tekton Hub
```
tkn hub search --kinds task build
```

3. Install the task in the namespace
```
tkn hub install task <task_name>
```

>[!success] Considering buildah option

 >[!information] Requirements acc. to the task documentation
 >**params**
 >Most of requirements has a default value acc. documentation...
 >
 >IMAGE: 
 >*The name (reference) image to build*
 >is the unique required param that doesn't have **default** value, so it must be specified into the pipeline
 >
 >**workspaces**
 >source:
 >*A workspace contain the source to build*


 
 
 
 
 
 
4. Add buildah to the pipeline
	1. add param name *build-image*
	2. Add the task and named it as *build*
	3. Add the WS definition
	4. Add the taskRef
	5. Add the task params IMAGE (buildah will looking for)

```yaml
apiVersion: tekton.dev/v1beta1
kind: Pipeline
metadata: 
	name: pipeline
spec:
	params:
		- name: build-image
	tasks:
		- name: build
		  workspaces:
			  - name: source
			    workspace: pipeline-workspace
		  taskRef:
			  name: buildah
			  kind: ClusterTask
		  params
			  - name: IMAGE
			    value: "$(params.build-image)"
		  runAfter: <task_name>

```

If your are using a cluster task you need to specify it with in the keyword: pair: 
*kind: ClusterTask*


***
[[Using Tekton Hub Catalog]] | [[]]
#### Tags
***
[^1]: [Building Image](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/OhBGd/building-an-image)
