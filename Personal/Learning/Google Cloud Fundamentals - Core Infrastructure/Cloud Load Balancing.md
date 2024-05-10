Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #loadbalance


![[gc_load_balance.png]]
- It doesn't run in VMs that you have to manage


![[gc_load_balance_features.png]]


#loadbalancesuite
#### Suite Load Balancer Option

![[gc_load_balance_suite.png]]

- Global HTTP(S)
	- Cross-regional LB for a web application
- Global SSL Proxy
	- Security Socket Layer that is not HTTP.
	- Works only for specific port number
- Global TCP Proxy
	- To traffic that doesn't use SSL
	- Works only for specific port number
- Region Load Balancer
	- To load UDP traffic, or traffic on any port number.
==All those services above are intended for traffic coming into the Google network from the internet==

- Regional Internal
	- Used to balance traffic inside your project
	- It accepts traffic on Google Cloud internal IP address and load balances it across Compute Engines

***
[[Compute Engine]] | [[Cloud DNS and Cloud CDN]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


