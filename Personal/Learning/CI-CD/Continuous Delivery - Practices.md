Practices[^1]
***
#cd #cdbestpractices  

#### Continuous Delivery ==Best Practices==

- Make every change releaseable
	- Always include user documentation
	- Operations runbooks, and information about what your change does.
- Embracing trunk-based development.
>[!note] Trunk-Based: short-live branches
	- Avoid long-live branches.

- Deliver through an automated pipeline
- Automate as many processes as possible.
>[!warning] Pipeline to creation of new development environments as well
This pipelines is not only for quality builds and deployments.

- Eliminate Application Downtime
	- when you push a new function to production, you must first validate each before deploying it to public-running application instances.

- Release at the granularity of test

***

#### CI-CD Pipeline Requirements
#requirements 

- A code repository
	- Everything deployed MUST be merged into a code manager.


- A **build Server**
	- that code needs a build server to manage the building of the application.
- An integration server/orchestrator
	- To Handle the build and runs test against your code
- Repository
	- To store binaries and artifacts of the application




***
[[Key Principles Continuous Delivery]] | [[]]

[^1]: [Practices](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/7uhyx/continuous-delivery-practices)