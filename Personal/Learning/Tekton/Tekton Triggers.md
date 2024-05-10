Triggers[^1]
***
#tekton #triggers

Tekton triggers allows the pipeline to respond on external event.

![[Events_triggers.png]]

EventListerner points 2 other CRDs:
- TriggerBinding CRD
	Which take data from the event and bind into the properties in the new pipeline
- TriggerTemplate CRD
	Which takes data from the binding and instanciate the PipelineRun passing that data.

![[Tekton_triggers.png]]

#### Triggers Flow
#triggers #triggersworkflow

When we create an EventListener it creates the POD running in the Kubernets listen for events.

Once the some event listen happens it set to the EventListener POD, which causes the TriggerBinding to be instantiate and pull information from the event and bind it to the parameters that the pipeline needs.

The parameters then is forwarded to the TriggerTemplate.

The **TriggerTemplate** as ==defined as a PipelineRun==, it runs your pipeline....
This new pipeline Resource starts, and your pipeline begins to run.

![[Tekton_triggers_flow.png]]


>[!info] Good Filter explanation and examples
>[# Filtering Tekton trigger operations](https://www.redhat.com/en/blog/filtering-tekton-trigger-operations)
>![[Filtering Tekton trigger operations]]




***
[[Tekton - Run the Pipeline]] | [[Build an EventListener]]
#### Tags
***
[^1]: [Triggers](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/TEv7B/creating-tekton-triggers)