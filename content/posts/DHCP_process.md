+++
title = 'DHCP process'
date = 2024-07-22T09:10:24+02:00
draft = false
+++
## Discover 
- The device sends a DHCP **Discover message** using [UDP]({{< ref "posts/for_later/UDP.md" >}}) (because it does not have an [IP](/Network/Ref_OSI/IP.md)).
	- It's a [broadcast]({{< ref "posts/for_later/broadcast.md" >}}) connection that the router ignores (*since no IP*) but is **accepted** by the [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}).
		- ![DHCPDiscover_visual.png](/Notes/DHCPDiscover_visual.png)

## Offer 
- Since the [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) accepts the message from the device, it sends a message (offer via [UDP]({{< ref "posts/for_later/UDP.md" >}}) **/67**) with a potential [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}).
	- No way to [unicast]({{< ref "posts/for_later/unicast.md" >}}) yet, it's still a [broadcast]({{< ref "posts/for_later/broadcast.md" >}}).
		- ![DHCP_Offer_visual.png](/Notes/DHCP_Offer_visual.png)
- The device receives the message from the [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) with the [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}).

## Request 
- The device asks the **server** whether the IP provided by the [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) is correct.
	- ![DHCPRequest_visual.png](/Notes/DHCPRequest_visual.png)

## Acknowledgment
- The [DHCP server]({{< ref "posts/Network/Phisicall/DHCP_server.md" >}}) sends a [broadcast]({{< ref "posts/for_later/broadcast.md" >}}) message to all.
	- The device then configures itself with the IP that was originally sent in the offer and acknowledges.
	- ![DHCPAcknowledgment_visual.png](/Notes/DHCPAcknowledgment_visual.png)

[DHCP relay]({{< ref "/posts/DHCP_rely.md" >}})
