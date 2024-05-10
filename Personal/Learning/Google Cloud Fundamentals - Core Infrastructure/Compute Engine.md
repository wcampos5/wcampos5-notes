Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #ec #computeengine

#vmtype #ectype #machinespecification
[Machine Types](http://cloud.google.com/docs/machine-types)

![[gc_compute_engine.png]]


![[gc_compute_engine_details.png]]


Can use Cloud Marketplace to take pre-configured machines

#ce #pricing
#### Compute Engine Pricing
- Bills by second
- 1 minute minimum
- Sustained-use discounts
	- VMs running over than 25% a month, get discount per average additional minutes.
- Committed-use discounts
	- For stable and predictable workloads, a specific amount of vCPUs and memory can be purchased for up to a 57% off in returning for comitment of 1 or 3 years.
- Preemptive & Spot VMs
	- Can save up to 90% by choosing preemptible or Spot VMs to run automatically tasks like a batch job analyzing a large dataset. 
	- Preemptive Vms ==Can only run for up to 24hs at time==
	
	- ==Spot VMs==
		- More features
		- No runtime limitation


#autoscale
#### Scaling Virtual Machines
Compute Engine has a feature called "Autoscaling"

VMs can add or remove to an application based on the load metrics or using a load balancer.




***
[[Virtual Private Cloud networking]] | [[Cloud Load Balancing]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


