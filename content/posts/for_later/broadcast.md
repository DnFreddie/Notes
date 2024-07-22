+++
title = 'Broadcast'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

**Send information to everyone at once**
The device sends *only one signal* to the network  
- One-to-all 
	- One packet recived by everyone
- Limited scope 
	- broadcast domain 
		- It a range of yur local ip [subnet mask](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/subnet mask.md)
- Touting updates ARP requests
- Used in [IPv4]({{< ref "posts/Network/basic_network_connections/IPv4_address.md" >}})
	- **Not used in IPv6**
		- Uses  [multicast]({{< ref "posts/for_later/multicast.md" >}}) instead

>Example
>![Broadcast_visual.png](/static/Broadcast_visual.png)

[unicast]({{< ref "posts/for_later/unicast.md" >}}) 
