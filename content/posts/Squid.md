+++
title = 'Squid'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ### Web Proxy Server 
All the computer are connected to the internet via Proxy
**Defult Port** *3128*[ports]({{< ref "posts/ports/ports.md" >}})



#### Features
- **Enabling [cache]({{< ref "posts/nixos/cache.md" >}})**
	- The proxy service will stored the data on the its own hard drive so it will speed up the downlowand and lower the bandwidth
- **Access Control List ACL**
	- Control what pages that can be used 
		(*stored in the text file  with squid*)
- **Bypass the fire wall** 
	- Conncet to the home server and acces the webiste 


>[!quote] [NAT]({{< ref "posts/Network/basic_network_connections/NAT.md" >}}) [proxy]({{< ref "posts/Linux/Network_manipulation/proxy.md" >}})