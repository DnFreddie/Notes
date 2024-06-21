## Subnet Mask 
Its dividing [Network_OSI](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/Network_OSI.md) into smaller *inner networks*
*In decimals is the sereies of ones and zeros at the end*(111111.11111.11111.0000)
#alt-name  **/24** Classes Interdoamin Routing (**CIDR**)('*slach notation*') 
In order to calculate this we sum up all the ones 
**use cheat sheet** 
>[!example]-
>![CIDRCalculation_visual.png](/static/CIDRCalculation_visual.png)
>>[!tip]- Cheat sheet
>> ![CheatSheetCIDR_visual.png](/static/CheatSheetCIDR_visual.png)


- Each subnet is identified by a unique network address and a subnet mask, which is used to determine the range of IP addresses that belong to that subnet.
	- e.g.,**255.255.255.0**
		- Used by the local device **in conjunction with [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md)** to  determnie what subnet its on 
			- *The subnet mask is not (ussualy transmited across the network)*

Now we use [VLSM](/obisdian_ntoes/for later/VLSM.md) instead of [subnet classes](/obisdian_ntoes/for later/subnet classes.md)



$$ $$
[subnet construction](/obisdian_ntoes/for later/subnet construction.md)
>[!quote] [defult gateway](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/defult gateway.md) [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)