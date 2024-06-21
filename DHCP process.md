## Discover 
-  The device sends DHCP **Discover meesage** using [UDP](/obisdian_ntoes/for later/UDP.md)(becose it does not have [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md)) 
	- It's [broadcast](/obisdian_ntoes/for later/broadcast.md) connation that the router ignores (*since no IP*) but **its accepted** by [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)
		- ![DHCPDiscover_visual.png](/static/DHCPDiscover_visual.png)

## Offer 
- Since [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  accepts te message from device it send's a message (offer [UDP](/obisdian_ntoes/for later/UDP.md) **/67**) with potentaila [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) 
	-  No way to [unicast](/obisdian_ntoes/for later/unicast.md) yet (*its still a* [broadcast](/obisdian_ntoes/for later/broadcast.md))
		- ![DHCP_Offer_visual.png](/static/DHCP_Offer_visual.png)
 - Device recives the message from [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) with [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md)

## Request 

- The device ask the **server** weather the IP provided by [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  is correct 
	- ![DHCPRequest_vsiual.png](/static/DHCPRequest_vsiual.png)

## Acknowladgment
- [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) sends a [broadcast](/obisdian_ntoes/for later/broadcast.md)  measage to all
	- Then device configures itself with the IP that was orignly send in the offer and acknowledg 
	- ![DHCPAcnowledgment_visual.png](/static/DHCPAcnowledgment_visual.png)


>[!quote] [DHCP rely](/DHCP rely.md)