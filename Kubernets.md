Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #kubernets


#### Kubernets

>[!info] Definition:
>Open-source platform for managing containerized workloads and services

Helps manage and scale containerized applications
Can be bootstrapped using ==Google Kubernets Engine== GKE #gke 

![[gc_kubernets.png]]
#kubernetnode #node
In Kubernets a NODE represent a computing instance ( a virtual machine)
#googlecloudnode
It differ from Google Cloud were a node is a VM running into Compute Engine

#pod
#### POD 

![[kubernets_pod.png]]

Deploying Container on Node (in a virtual machine) by using a wrapper around one or more containers is what defines  a ==POD==

A Pod is the smallest unit in the Kubernets that you create or deploy.

It ==represents a running process in your cluster== as either a component of your application or entire app.

Generally you have one container per POD.



But if you have multiple containers with a hard dependency, you can package them into a single POD and share networking and storage resources between them.

The POD provides a unique network IP and set ports for your containers and configurable option that govern how containers should run
![[kubernets_multiple_pods.png]]

#podcommands #imperativecommands
#podrun #kubectlrunpod

Start a deployment with a container running inside a POD
```
kubectl run
```

#podslist  #listpods
To see a list of running PODs in your project
```
kubectl get pods
```

Kubernets creates a Service with a fixed IP address for your PODs, and a controller says "I need to attach an external LB with a public IP address to that Service so other outside the cluster can access it."

In Google Kubernets Engine #gke the LB is created as a network load balancer.

```
kubeclt expose deployments nginx --port=80 --type=LoadBalancer
```

Any client that reaches that IP Address will be routed to a POD behind the Service.
![[kubernets_gke_lb_with_public_ip.png]]


#service
#### Kubernets Service
It is an abstraction which defines a logical set of PODs and Policies by which to access them.

```
cubectl get service
```

As each deployments create and destroy PODs, PODs are assigned to their own IP addresses, each means they don't remain stable over time.

#servicegroups
#### Kubernets Service Groups
It is a ==set of PODs== and ==provides a stable endpoint (Fixed IP address)== for them.

>[!success] Example: Creating two sets of POD
>called frontend and backend
>and put them behind their own Services, the back end might changes but the frontend PODs will not be aware of this.
>They simply refer to the backend Service

#kubernetscale
#### Scaling deployments

![[kubernets_multiple_pods_scaling.png]]

In this example three Pods are created in our Deployment, and they are placed behind the Service and shared one fixed IP address.

```
kubectl scale
```

You could use Autoscaling with other parameters, for example
- You can specify that the number of Pods should increase when CPU utilization reaches certain limit.

#declarative
#### Declarative commands
You provides a configuration file that tells Kubernets ==what you want== your desired state to look like, and ==Kubernets== determine ==how to do it==!

You accomplish this by using the deployments config file.

To get this config file you need to run:
```
kubectl get deployments
```

>[!example] Declarative Kubernets Config file example:
>nginx-deployment.yaml
>![[kubernets_declarative_config_file_example.png]]

```
kubeclt apply -f path_to_file/nginx-deployment.yaml
```

To verify that it's running properly you can try get deployments or describe deployments

```
kubectl get deployments
```
```
kubectl describe deployments
```

To get the external IP of the Service and reach the public IP from a client use:
```
kubectl get services
```


#kubernetsdeploynewcode
#### Kubernets Deploy new code updates
If you want to update your container to get the new code in front of users, but rolling out to those change at one time would be risky.

In this case either use a #imperative command...
```
kubectl rollout
```

... or change your configuration file and apply the change using 
```
kubectl apply
```


New Pods will them be created according to your new update strategy.

>[!example] Update Strategy Configuration example
>![[kubernets_update_strategy.png]]

This example will create a new Pods individually and wait for a new Pod to be available before destroy one of the old Pods. 


***
[[Introduction to containers]] | [[]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/lecture/trL18/kubernetes)


