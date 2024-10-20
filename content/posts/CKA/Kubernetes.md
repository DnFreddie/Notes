+++
title = 'Kubernetes'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ### Benefits
- **Availability and scalability**
	-  **Load balancing**
		- It can *duplicate* the applicatipn  
- **Portable**
	- can run anywhere on any type of the infrastructure
- **Popularity**


### Cluster Architecture

#### Pod 
- The smallest **deploy-able** unit 
	- Group of one or more container
		- They **share storage and network** resources
- **Unit of replication**
	- Easy to increase the number of pods running

##### Pods kinds
######  Sidecar 
- Run in the same Pod as main container 
- Can share folders with main container 
- Can communicate via localhost 
>[!example]-
>![Pasted_image_20240509205921.png](/Notes/Pasted_image_20240509205921.png)
######  Ambassador

- The  main app does not connect to external services 
	- The **ambassador container** does it 
	- It works pretty much as proxy 

>[!example]-
>![Pasted_image_20240509205439.png](/Notes/Pasted_image_20240509205439.png)

##### Adapter
- This modifies the information revived from the container to the desired format 
	- Example logs  or data required for the  app

>[!example]-
>![pasted_image_20240509210026.png](/Notes/pasted_image_20240509210026.png)

[docks](https://raghavramesh.github.io/posts/kubernetes-multi-container-patterns/)



#### node_k
- **pshyhical virtual machine**
	- runs one or more pod 
--- 

## Diffrent tools 

 -  **warewolf**
 		[WareWolf](https://warewulf.org/)
