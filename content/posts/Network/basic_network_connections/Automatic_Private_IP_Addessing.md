+++
title = 'Automatic Private IP Addessing'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## APIPA
#alt-name **A link-local address**
- It works when [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) is not avaible 
	- *Can only communicate to other local devices* 
	- No forwording by routers


## How to see u were assign APIPA

- **IF your  [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) address is between 169.254.0.1 throug 169.254.255.254**
	- First and last 256 addresses are reserver 
	- *Functional block 169.254.1.0 through 169.254.254.255*
- The APIPA choses the random adress and the checs weather another device is not using it 

