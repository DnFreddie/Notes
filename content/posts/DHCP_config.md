---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DHCP config
---

# DHCP CONFIG INSTRUCTION

## Create Scope

**Params** - [IP](/Notes/posts/Network/Ref_OSI/IP) addres rage (*and
excluded adresses*) - [subnet
mask](/Notes/posts/Network/basic_network_connections/subnet_mask) -
Lease duration (*for how long will this device has IP*) **Other scopes**
- [DNS](/Notes/posts/Network/Phisicall/DNS) server - [defult
gateway](/Notes/posts/Network/basic_network_connections/defult_gateway)
- [VOIP](/Notes/posts/VOIP) serveres ## Pools One **Scope** is genarlly
a single contiguaous pool of IP addresses Each [subnet
mask](/Notes/posts/Network/basic_network_connections/subnet_mask) has
its own scope [SUbnetScopes_visual.png](/SUbnetScopes_visual.png) - DHCP
exeptions can be made inside of the scope

## Address Assigments

[DHCP server](/Notes/posts/Network/Phisicall/DHCP_server) has a big pool
of addresses to give out - Addresses are recalimed after a lease period

**Automatic assigment** - Similar to dynamic allocation - [DHCP
server](/Notes/posts/Network/Phisicall/DHCP_server) keeps a list of past
assigments - ==U always get the same IP address==

**Static assigment** - Administratively configured **Table of** \[\[MAC
Adress\]\] - Each \[\[MAC Adress\]\] has its matching
[IP](/Notes/posts/Network/Ref_OSI/IP) address ## Address reservation
![Address_Reservation_visual.png](/Notes/Address_Reservation_visual.png)
## DHCP renewal - **T1 Timer** - Check in with the lending [DHCP
server](/Notes/posts/Network/Phisicall/DHCP_server) to renew the
[IP](/Notes/posts/Network/Ref_OSI/IP) address - ==50% of the leas time
by default== - **T2 Timer** - If the original [DHCP
server](/Notes/posts/Network/Phisicall/DHCP_server) is down the
rebinding with any [DHCP
server](/Notes/posts/Network/Phisicall/DHCP_server) - ==87,5% of the
lease time (7/8ths)==

#alt-name 1. Static DHCP Assaigment 2. Static DHCP 3. Address
Reservation 4. IP Reservation

> \[!quote\]
