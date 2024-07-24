+++
title = 'DHCP_config'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

# DHCP CONFIG INSTRUCTION 
## Create Scope 
**Params**
 - [IP](/Network/Ref_OSI/IP.md) addres rage (*and excluded adresses*)
 - [subnet mask](/Network/basic network connections/subnet mask.md)
 - Lease duration (*for how long will this device has IP*)
**Other scopes** 
 - [DNS](/Network/Phisicall/DNS.md) server 
 - [defult gateway](/Network/basic network connections/defult gateway.md) 
 - [VOIP](/VOIP.md) serveres 
## Pools 
One **Scope** is genarlly a single contiguaous pool of IP addresses 
 Each [subnet mask](/Network/basic network connections/subnet mask.md)  has its own scope 
  [SUbnetScopes_visual.png](/SUbnetScopes_visual.png)
  - DHCP exeptions can be made inside of the scope 

## Address Assigments 

[DHCP server](/Network/Phisicall/DHCP server.md)  has a big pool of addresses to give out 
 - Addresses are recalimed after a lease period  

**Automatic assigment** 
- Similar to dynamic allocation 
- [DHCP server](/Network/Phisicall/DHCP server.md)  keeps a list of past assigments 
- ==U always get the same IP address==

**Static assigment**
- Administratively configured 
**Table of** [[MAC Adress]]
- Each [[MAC Adress]]  has its matching [IP](/Network/Ref_OSI/IP.md) address 
## Address reservation 
![Address_Reservation_visual.png](/Notes/Address_Reservation_visual.png)
## DHCP renewal 
- **T1 Timer**
	- Check in with the lending [DHCP server](/Network/Phisicall/DHCP server.md) to renew the [IP](/Network/Ref_OSI/IP.md) address 
	- ==50% of the leas time by default==
- **T2 Timer** 
	- If the original [DHCP server](/Network/Phisicall/DHCP server.md) is down the rebinding with any [DHCP server](/Network/Phisicall/DHCP server.md) 
	- ==87,5% of the lease time (7/8ths)==

#alt-name 
1. Static DHCP Assaigment 
2. Static  DHCP
3. Address Reservation 
4. IP Reservation  

>[!quote]