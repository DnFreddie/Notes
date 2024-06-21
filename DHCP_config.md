---
date:: 2023-08-03
type:: network+
---
# DHCP CONFIG INSTRUCTION 
## Create Scope 
**Params**
 - [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) addres rage (*and excluded adresses*)
 - [subnet mask](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/subnet mask.md)
 - Lease duration (*for how long will this device has IP*)
**Other scopes** 
 - [DNS](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DNS.md) server 
 - [defult gateway](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/defult gateway.md) 
 - [VOIP](/VOIP.md) serveres 
## Pools 
One **Scope** is genarlly a single contiguaous pool of IP addresses 
 Each [subnet mask](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/subnet mask.md)  has its own scope 
  [SUbnetScopes_visual.png](/static/SUbnetScopes_visual.png)
  - DHCP exeptions can be made inside of the scope 

## Address Assigments 

[DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  has a big pool of addresses to give out 
 - Addresses are recalimed after a lease period  

**Automatic assigment** 
- Similar to dynamic allocation 
- [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  keeps a list of past assigments 
- ==U always get the same IP address==

**Static assigment**
- Administratively configured 
**Table of** [[MAC Adress]]
- Each [[MAC Adress]]  has its matching [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) address 
## Address reservation 
![Address_Reservation_visual.png](/static/Address_Reservation_visual.png)
## DHCP renewal 
- **T1 Timer**
	- Check in with the lending [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) to renew the [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) address 
	- ==50% of the leas time by default==
- **T2 Timer** 
	- If the original [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) is down the rebinding with any [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) 
	- ==87,5% of the lease time (7/8ths)==

#alt-name 
1. Static DHCP Assaigment 
2. Static  DHCP
3. Address Reservation 
4. IP Reservation  

>[!quote]