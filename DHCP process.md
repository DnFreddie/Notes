## Discover 
-  The device sends DHCP **Discover meesage** using [[UDP]](becose it does not have [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md)) 
	- It's [[broadcast]] connation that the router ignores (*since no IP*) but **its accepted** by [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)
		- ![DHCPDiscover_visual.png](/static/DHCPDiscover_visual.png)

## Offer 
- Since [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  accepts te message from device it send's a message (offer [[UDP]] **/67**) with potentaila [[IP]] 
	-  No way to [[unicast]] yet (*its still a* [broadcast](/obisdian_ntoes/for later/broadcast.md))
		- ![DHCP_Offer_visual.png](/static/DHCP_Offer_visual.png)
 - Device recives the message from [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) with [[IP]]

## Request 

- The device ask the **server** weather the IP provided by [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  is correct 
	- ![DHCPRequest_vsiual.png](/static/DHCPRequest_vsiual.png)

## Acknowladgment
- [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) sends a [[broadcast]]  measage to all
	- Then device configures itself with the IP that was orignly send in the offer and acknowledg 
	- ![DHCPAcnowledgment_visual.png](/static/DHCPAcnowledgment_visual.png)


>[!quote] [DHCP rely](/DHCP rely.md)