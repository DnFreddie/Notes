+++
title = 'DHCP rely'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

1. Device sends [[DHCP process#Discover]]
	-  ![RelyDsicoverd_viual.png](/Notes/RelyDsicoverd_viual.png)
2. When **router revives the massaeage** is changes the **source address** to [DHCP server]({{< ref "posts/Network/Phisicall/DHCP server.md" >}})  
3. The the server sends [[DHCP process#Offer]] send back the ip to the router 
	- ![DHCPRelyOffer_visual.png](/Notes/DHCPRelyOffer_visual.png)
4. The router recognieses the **DHCP reely config** and changes ip adress to be a brodcarts for local network   

>[!quote] [DHCP_protocol]({{< ref "posts/protocols/DHCP_protocol.md" >}}) [DHCP process]({{< ref "posts/DHCP process.md" >}})