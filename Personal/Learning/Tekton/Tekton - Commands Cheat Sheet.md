Ref[^1]
***
#tekton #cheatcheat #commands #tektoncommands #tkn

Search from Tekton Hub
#tknsearch #tknsearch 

```
tkn hub search --kinds task build
```

Some results from the search:
- docker-build: #docker-build
Builds a Docker image from a Dockerfile and pushes a Docker image to a 
registry.

- buildah #buildah
The buildah task builds your source into a container image from a Dockerfile and then pushes it to a container registry using Project Atomic's Buildah build tool.

- buildpacks
Same as both above bud it uses Cloud Native BuildPacks

List tasks installed on the cluster
#tkntasks #tknclustertasks #clustertasks

```
tkn clustertask ls
```

Getting Tekton Hub task information
#tkninfo #getinfo

```
tkn hub info task openshit-client
```

Command to specify the latest logs
#tknlogs
```
tkn pipelinerun logs --latest
```

Run Pipeline
#tknrunpipeline #tknrunpipeline 

```
tkn pipeline start <pipeline_name> --showlog \
-p repo-url="https://github.com/rograno/tekton-testing.git"
```


Install task from the Tekton Hub
#tkninstall 
```
tkn hub install task <task_name>
```
>[!important] Only Administrators can install tasks at the cluster level
>The command above will install it into (current) local namespace





[^1]: [Ref](#)