+++
title = 'SDN'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Software Defined Networking 
Networking devices have different functional panes of operation

 - Data control and management of planes of operation 
	 - Split the functions into seprate logical units 
		 - Extend the functionality and management of signle device 
		 - Perfectly built for the cloud 


### Infrastructure Layer
***Data plane***

 - Processes networking frames and packets 
 - Forwarding trunking encrypting [NAT]({{< ref "posts/Network/basic network connections/NAT.md" >}})
### Control layer / Control plane

 - Manges the action of the data plane 
 - Routing tables session tables NAT tables 
 - Dynamic routing protocol updates 
### Application layer/Management plane
 - Configure and mange the device 
 
![SDNDataFlows_visual.png](/Notes/SDNDataFlows_visual.png)



>[!quote] [hypervisor]({{< ref "posts/Network/vitrual/hypervisor.md" >}}) [SD-WAN]({{< ref "posts/Network/Network Types/SD-WAN.md" >}}) TOCHECK:virtual_server