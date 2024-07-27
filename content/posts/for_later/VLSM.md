+++
title = 'VLSM'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Variable Lenght Subent Masks 
- **Allow network administraters to define their owndmasks**
	- customize the [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}}) to the specyfic requierments 
- **Use diffren [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}}) in the same classfull network** 
	- 10.00.0/8 is the class A netwrok
	- 10.01.0/24 would be VLSM  
 - **[subnet classes]({{< ref "posts/for_later/subnet_classes.md" >}}) are inefficient**
	 - The [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}}) is based on the network class 
> [!example]- Calculating subnet and host 
> ![SubnetAndHost_visual.png](/Notes/SubnetAndHost_visual.png)


>[!quote] [subnet construction]({{< ref "posts/for_later/subnet_construction.md" >}})