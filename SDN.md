---
date:: 2023-08-30
type:: network+
---
## Software Defined Networking 
Networking devices have different functional panes of operation

 - Data control and management of planes of operation 
	 - Split the functions into seprate logical units 
		 - Extend the functionality and management of signle device 
		 - Perfectly built for the cloud 


### Infrastructure Layer
***Data plane***

 - Processes networking frames and packets 
 - Forwarding trunking encrypting [NAT](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/NAT.md)
### Control layer / Control plane

 - Manges the action of the data plane 
 - Routing tables session tables NAT tables 
 - Dynamic routing protocol updates 
### Application layer/Management plane
 - Configure and mange the device 
 
![SDNDataFlows_visual.png](/static/SDNDataFlows_visual.png)



>[!quote] [hypervisor](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/vitrual/hypervisor.md) [[SD-WAN]] TOCHECK:virtual_server