What is CD[^1]
***
#CICD #ci #cd #definition 

- C I-CD is not the same thing it's 2 distinctive things

#### CI - Continuous Integration
**Continuous Integration** is continuously integrating code back into main/master/trunk branch, so it shouldn't get too far away before you merge stuff back into the main branch to make sure that it works.

>[!quote] You are ***C**ontinuously ***I**ntegrating your code, with the main code.
 

***

#### CD - Continuous Delivery

>[!quote] **C**ontinuous **D**elivery is then taking that integrated code and deploying it is somewhere.

*You made the deploy every time you integrate it, you may not deploy it every time you integrate it.*

You may have CI on one loop.
And then, when you finally merge to your main branch, you kick off the Continuous Delivery.

![[what_is_CD.png]]

Continuous Delivery is a deployment to a develop, QA or Staging to ensure that the code can be deployed.
Deploy do production is called [[CI-CD Introduction#*Continuous Deployment*|Continuous Deployment]]

#### Goals of Continuous Delivery (*Martin Fowler*)

![[CD_goals.png]]

##### Goals
- main or master branch must always be deployable.
	- Requires checks to ensure no bad code gets into main branch and breaks your product.
- Main Key to Success
	- CI runs tests on every pull request.
		( ensures things work before merging back to main branch)



***

#### *Continuous Deployment*
#continuosdeployment

>[!quote] Deploying to production usually i called **Continuous Deployment**


##### Deployment or Delivery
#cdcddifferences

Continuous Delivery described as the automated movement of the code through the SDLC (Software Development Life Cycle) once it passes the required automation tests.

Continuous deployment can be part of your continuous delivery pipeline.
It takes the Delivered code and deploying it to production.



***
[[]] | [[Key Principles Continuous Delivery]]
#### References
[^1]: [What id CD](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/74BOQ/what-is-continuous-delivery-cd)

