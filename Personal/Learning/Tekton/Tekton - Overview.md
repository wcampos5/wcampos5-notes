Overview brief[^1]
Tekton and Pipelines[^2]
***
#tekton #overview

A flexible, open source framework that abstracts the implementation details so you can focus on building, testing, and deploying according to your projects requirements.

Standardizes  CI/CD tooling and processes

Made for reusability

Can run steps in sequence or in parallels

Work across both cloud providers and on-premises systems.

Run over Kubernets cluster ( anywhere you can run a Kubernetes cluster, you can run Tekton)

***

#### Conceptual Building Blocks
#concept #buildingblocks #workflow

###### Event
external event that fires are trigger.
>[!example] Example Pull request or push

###### Trigger
#trigger
a trigger is fired by an event and is the stimulus that starts a pipeline run, which execute the pipeline.

###### Pipeline
#pipeline
triggers point to pipelines, which are collections of tasks to execute.
These tasks can execute serially or in parallel.
##### Workspaces
#workspaces
Nada mais são do que **VOLUMES** mapeados
para armazenar os paramentros recebidos da tasks (que rodam um diferentes pods/maquinas)

- Workspace são **criados/mapeados** na **PipelineRun** e...
- **Referênciados** na Pipeline e nas Tasks (dentro da pipeline)

###### Task
#task
Unity of work that comprises one or more steps.
It can also define parameters required to carry out the steps and workspaces needed to store artifacts.
	

###### Step
#step

- São Containers
- Recebem um nome e um script arbitrário
- **Não é possivel criar steps**
	diretametne no Tekton, similar aos containers no Kubernets

>[!success] STEP
>name: hello
>image: ubuntu
>script: echo "Hello World"

They are the commands that are executed to carry out the tasks.
These can be anything you like, but most often, they are shell  scripts that execute commands to build, test, and deploy applications.

***
[[]] | [[Tekton - Physical Build Blocks]]

[^1]: [Overview brief](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/GgYtz/tools-of-continuous-delivery-cd)

[^2]: [Tekton and Pipelines](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/OpMLt/introduction-to-tekton-and-pipelines)
