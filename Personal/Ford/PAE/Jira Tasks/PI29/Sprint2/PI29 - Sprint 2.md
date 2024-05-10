#mmota-2973 #jiratasks #tasks #pi29 #services #common #pipeline #servicespipeline

#### MMOTA22T-2973
![[Services Common Pipeline.canvas|Services Common Pipeline]]
###### Create a Prognostics-Feature-Common Tekton Pipeline
- Create a new Tekton Service 
	[x] el-el-prognostics-cr-ecoboost-service
- Create a new route
	[x] webhook-service
- Create a new Event Listener
	[x] el-prognostics-cr-ecoboost-services
- Create or Update:
	- Trigger Bindings
		[x] tb-prognostics-cr-services-pr-binding
		[x] tb-prognostics-cr-services-pull-binding
	- Trigger Templates
		[x] tt-prognostics-cr-services
			[x] Parameterize the trigger template to generate the PipelineRuns on the fly based in the github repo triggered event
-  Create a common parameterized PAE-Services Tekton Pipeline
	[ ] prognostics-cr-services-pipeline
	- Targeted this pipeline to all of the on the fly PipelineRun generated
- Test deployment for all of PAE Services Features
	- pae-service-metrics-gcp
	- pae-service-oil-life-gcp
	- pae-service-telemetry-gcp
	- pae-service-scheduled-maintenance-gcp
	- pae-service-tire-slow-leak-gcp
- Remove un-used Resources:
		[ ] - Service
		[ ] - Webhook
		[ ] - EventListener
	- Trigger Templates:
		[ ] - metrics-prognostics-trigger-template
		[ ] - ol-prognostics-trigger-template
		[ ] - telemetry-prognostics-trigger-template
		[ ] - sm-prognostics-trigger-template
		[ ] - tsl-prognostics-trigger-template
		[ ] - bhm-prognostics-trigger-template
		
