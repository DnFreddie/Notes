+++
title = 'DHCP process'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ## Discover 
-  The device sends DHCP **Discover meesage** using [UDP]({{< ref "posts/for later/UDP.md" >}})({{< ref "postsbecose it does not have [IP](/Network/Ref_OSI/IP.md" >}})) 
	- It's [broadcast]({{< ref "posts/for later/broadcast.md" >}}) connation that the router ignores (*since no IP*) but **its accepted** by [DHCP server]({{< ref "posts/Network/Phisicall/DHCP server.md" >}})
		- ![DHCPDiscover_visual.png](/Notes/DHCPDiscover_visual.png)

## Offer 
- Since [DHCP server]({{< ref "posts/Network/Phisicall/DHCP server.md" >}})  accepts te message from device it send's a message ({{< ref "postsoffer [UDP](/for later/UDP.md" >}}) **/67**) with potentaila [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) 
	-  No way to [unicast]({{< ref "posts/for later/unicast.md" >}}) yet ({{< ref "posts*its still a* [broadcast](/for later/broadcast.md" >}}))
		- ![DHCP_Offer_visual.png](/Notes/DHCP_Offer_visual.png)
 - Device recives the message from [DHCP server]({{< ref "posts/Network/Phisicall/DHCP server.md" >}}) with [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}})

## Request 

- The device ask the **server** weather the IP provided by [DHCP server]({{< ref "posts/Network/Phisicall/DHCP server.md" >}})  is correct 
	- ![DHCPRequest_vsiual.png](/Notes/DHCPRequest_vsiual.png)

## Acknowladgment
- [DHCP server]({{< ref "posts/Network/Phisicall/DHCP server.md" >}}) sends a [broadcast]({{< ref "posts/for later/broadcast.md" >}})  measage to all
	- Then device configures itself with the IP that was orignly send in the offer and acknowledg 
	- ![DHCPAcnowledgment_visual.png](/Notes/DHCPAcnowledgment_visual.png)


>[!quote] [DHCP rely]({{< ref "posts/DHCP rely.md" >}})