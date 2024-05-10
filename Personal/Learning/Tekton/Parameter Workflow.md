Parameter Workflow[^1]
***
#parms #parameters #workflow 

### Parameters workflow
#triggerbindingtotemplate #parameterworkflow
![[parameters_workflow.png]]

>[!success] Parameter names do not have to match as long as you can map them

Even the params won't match you still able to map them

As described below it assign a repo url value to repo-url name variable for the TT.

| TB name                         | TT Name                            |
| ------------------------------- | ---------------------------------- |
| name: ==repository==            | repo-url                           |
| value: "$(body.repository.url)" | value: $(tt.params.==repository==) |

#### Flow

1. Start the even that has some data needed for the pipeline
2. TriggerBinding takes the data from the event and binding it to the parameters.
3. Those parameters are then mapped in the --> TriggerTemplate to the pipeline run, so that they are ==available== to the pipeline and ==all its Tasks as parameter names== the the pipeline expects to receive.






***
[[Tekton TriggerTemplate]] | [[Tekton - Running the Pipeline]]

[^1]: [Parameter Workflow](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/TEv7B/creating-tekton-triggers)