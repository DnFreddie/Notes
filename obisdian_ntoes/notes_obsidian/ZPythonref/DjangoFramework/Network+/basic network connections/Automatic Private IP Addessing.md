---
date:: 16 04 2023
type:: network+
---

## APIPA
#alt-name <mark style="background: #72083D;">A link-local address</mark>
- It works when  [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) is not avaible 
	- *Can only communicate to other local devices* 
	- No forwording by routers


## How to see u were assign APIPA

- **IF your [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) address is between 169.254.0.1 throug 169.254.255.254**
	- First and last 256 addresses are reserver 
	- *Functional block 169.254.1.0 through 169.254.254.255*
- The APIPA choses the random adress and the checs weather another device is not using it 

>[!quote] 