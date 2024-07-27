+++
title = 'subnet construction'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## The cosntruction of the subnet 
- **Network adress**
	- The first [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) of the [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}})
	- Set all host bits to 0 (0 decimal)
- **First usable host adress** 
	- One number highert than the network adress
- **Network [broadcast]({{< ref "posts/for_later/broadcast.md" >}}) adress**
	- The last IP addres of the subnet 
	- Set all host bits to 1 (255 decimal)
- **Last usable host address**
	- One number lower than the [broadcast]({{< ref "posts/for_later/broadcast.md" >}}) adress 
	- 

>[!quote] [subnet classes]({{< ref "posts/for_later/subnet_classes.md" >}})