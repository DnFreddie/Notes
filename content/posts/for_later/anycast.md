+++
title = 'Anycast'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

Single destiantion [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) has multiple path *to two or more endpoints*
- One-to-one-of-many
- Used in  [IPv4]({{< ref "posts/Network/basic_network_connections/IPv4_address.md" >}}) and [IPv6]({{< ref "posts/Network/IPv6_address.md" >}})
	- Looks like any other unicast address
- Packet sent to an anycast address are delivered to the closest interface (the device closet to u)
	- Announce the same rout of multple data centers clinets use the data center closest to them 
	- commonly used with Anycast DNS
![Anycast_visual.png](/Anycast_visual.png)
