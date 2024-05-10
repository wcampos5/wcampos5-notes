Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals 

#vpc
#### Virtual Private Cloud networking

###### Definition
It is a secure, individual, private cloud-computing model,
hosted within a public cloud (like Google Cloud).

![[gc_vpc.png]]

Additionally the size of ==subnet could be increase by expand== the range of IPs allocated to it.


VPC can have VMs from different zone attached to it's subnet.
This makes the applications running by them more resilient.

![[gc_vpc_subnet.png]]


#vpcfeatures #routing
#### VPC Compatibility Features 

- Like Physical networks VPC have Routing Tables Built-In
- Used to forward  traffic from one instance to another within the same network, across sub-networks or even between Google Cloud Zones without requiring one external IP-Address

![[gc_routing_tables.png]]

#firewall
#### Firewall

- No firewall required, it provides a global distributed firewall, which can be controlled to restrict access to instances through both incoming and outgoing traffic.
- Firewall rules can be defined through network tags on Compute Engine instances.
![[gc_firewall.png]]


#tags #tag #networktags #forwardruletag
#### Network Tags

For example you can TAG all off your Web servers with, "WEB" tag and write a firewall rule saying that traffic on ports 80 or 443 is allowed on all VMs with Web tag, no matter what they IPs happens to be.

![[gc_CE_tags.png]]

#peering
#### VPC Peering
Allows VPCs to talk to each other, with VPC Peering, a relationship between two VPCs can be stablish to exchange traffic.




***
[[Interacting with Google Cloud]] | [[Compute Engine]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


