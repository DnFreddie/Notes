---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Anycast
---

Single destiantion [IP](/Notes/posts/Network/Ref_OSI/IP) has multiple
path *to two or more endpoints* - One-to-one-of-many - Used in
[IPv4](/Notes/posts/Network/basic_network_connections/IPv4_address) and
[IPv6](/Notes/posts/Network/IPv6_address) - Looks like any other unicast
address - Packet sent to an anycast address are delivered to the closest
interface (the device closet to u) - Announce the same rout of multple
data centers clinets use the data center closest to them - commonly used
with Anycast DNS ![Anycast_visual.png](/Notes/Anycast_visual.png)
