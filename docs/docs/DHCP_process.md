---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DHCP process
---

## Discover

-   The device sends a DHCP **Discover message** using
    [UDP](/for_later/UDP) (because it does not have an
    [IP](/Network/Ref_OSI/IP)).
    -   It’s a [broadcast](/for_later/broadcast) connection
        that the router ignores (*since no IP*) but is **accepted** by
        the [DHCP server](/Network/Phisicall/DHCP_server).
        -   ![DHCPDiscover_visual.png](/static/DHCPDiscover_visual.png "fig:")

## Offer

-   Since the [DHCP server](/Network/Phisicall/DHCP_server)
    accepts the message from the device, it sends a message (offer via
    [UDP](/for_later/UDP) **/67**) with a potential
    [IP](/Network/Ref_OSI/IP).
    -   No way to [unicast](/for_later/unicast) yet, it’s
        still a [broadcast](/for_later/broadcast).
        -   ![DHCP_Offer_visual.png](/static/DHCP_Offer_visual.png "fig:")
-   The device receives the message from the [DHCP
    server](/Network/Phisicall/DHCP_server) with the
    [IP](/Network/Ref_OSI/IP).

## Request

-   The device asks the **server** whether the IP provided by the [DHCP
    server](/Network/Phisicall/DHCP_server) is correct.
    -   ![DHCPRequest_visual.png](/static/DHCPRequest_visual.png "fig:")

## Acknowledgment

-   The [DHCP server](/Network/Phisicall/DHCP_server) sends
    a [broadcast](/for_later/broadcast) message to all.
    -   The device then configures itself with the IP that was
        originally sent in the offer and acknowledges.
    -   ![DHCPAcknowledgment_visual.png](/static/DHCPAcknowledgment_visual.png "fig:")

[DHCP relay](//posts/DHCP_rely)
