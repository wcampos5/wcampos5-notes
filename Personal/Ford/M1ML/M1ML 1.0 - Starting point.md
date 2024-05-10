Mach1ML-Docs[^1]
***
#m1ml #m1mldocs

#### ML CI
#mlopsci
- Merge Code
	- New versions
	- Update of Data processing
- Automated Tests
	- Once changes to the model or the data processing pipeline can have significant impacts on performance and accuracy.

#### MLOPS CD
#mlopscd
###### Continuous Delivery
- Deploying the code  to a testing or stage environment after the build stage
	- Deploying a model to a sandbox environment
		- where its performance can be evaluated on a more realistic dataset
		- or in simulated real-world conditions.

###### Continuous Deployment
- Deployment of validated changes to production.
	- This means that if the updated model passes all tests and evaluations in the staging environment, it can be automatically deployed to serve real-world predictions.




Use _regenerate_ (PowerShell) once you do some changes to the pipeline
#regenerate
>[!error] To be confirmed at:
>https://pages.github.ford.com/Mach1ML-2-0/Mach1ML-Docs/devops/cicd_add_tasks/?h=regenerate#step-5-run-regenerate
```powershell
regenerate
```

Navigate to the `cicd-definition` subfolder location in your blueprint's folder and run the following PowerShell Command:
#deploy
```Powershell
Deploy
```

This command will deploy the necessary resources (pipeline.yaml) into OpenShift. If deployed correctly, you will be able to view the changes in the pipeline in [OpenShift Console](https://console-openshift-console.apps.pd103.caas.gcp.ford.com/).

***
#### Questions
How do get a M1ML Template?




***
[[]] | [[M1ML - CICD Setup]]
#### Tags
***
[^1]: [Mach1ML-Docs](https://pages.github.ford.com/Mach1ML-2-0/Mach1ML-Docs/)