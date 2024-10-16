+++
title = 'DHCP_config'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

# DHCP CONFIG INSTRUCTION 
## Create Scope 
**Params**
 - [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) addres rage (*and excluded adresses*)
 - [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}})
 - Lease duration (*for how long will this device has IP*)
**Other scopes** 
 - [DNS]({{< ref "posts/Network/Phisicall/DNS.md" >}}) server 
 - [defult gateway]({{< ref "posts/Network/basic_network_connections/defult_gateway.md" >}}) 
 - [VOIP]({{< ref "posts/VOIP.md" >}}) serveres 
## Pools 
One **Scope** is genarlly a single contiguaous pool of IP addresses 
 Each [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}})  has its own scope 
  [SUbnetScopes_visual.png](/SUbnetScopes_visual.png)
  - DHCP exeptions can be made inside of the scope 

## Address Assigments 

[DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}})  has a big pool of addresses to give out 
 - Addresses are recalimed after a lease period  

**Automatic assigment** 
- Similar to dynamic allocation 
- [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}})  keeps a list of past assigments 
- ==U always get the same IP address==

**Static assigment**
- Administratively configured 
**Table of** [[MAC Adress]]
- Each [[MAC Adress]]  has its matching [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) address 
## Address reservation 
![Address_Reservation_visual.png](/Notes/Address_Reservation_visual.png)
## DHCP renewal 
- **T1 Timer**
	- Check in with the lending [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) to renew the [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) address 
	- ==50% of the leas time by default==
- **T2 Timer** 
	- If the original [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) is down the rebinding with any [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) 
	- ==87,5% of the lease time (7/8ths)==

#alt-name 
1. Static DHCP Assaigment 
2. Static  DHCP
3. Address Reservation 
4. IP Reservation  

>[!quote]