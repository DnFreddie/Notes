---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DHCP process
---

## Discover

-   The device sends a DHCP **Discover message** using
    [UDP](/Notes/posts/for_later/UDP) (because it does not have an
    [IP](/Network/Ref_OSI/IP)).
    -   It’s a [broadcast](/Notes/posts/for_later/broadcast) connection
        that the router ignores (*since no IP*) but is **accepted** by
        the [DHCP server](/Notes/posts/Network/Phisicall/DHCP_server).
        -   ![DHCPDiscover_visual.png](/Notes/DHCPDiscover_visual.png "fig:")

## Offer

-   Since the [DHCP server](/Notes/posts/Network/Phisicall/DHCP_server)
    accepts the message from the device, it sends a message (offer via
    [UDP](/Notes/posts/for_later/UDP) **/67**) with a potential
    [IP](/Notes/posts/Network/Ref_OSI/IP).
    -   No way to [unicast](/Notes/posts/for_later/unicast) yet, it’s
        still a [broadcast](/Notes/posts/for_later/broadcast).
        -   ![DHCP_Offer_visual.png](/Notes/DHCP_Offer_visual.png "fig:")
-   The device receives the message from the [DHCP
    server](/Notes/posts/Network/Phisicall/DHCP_server) with the
    [IP](/Notes/posts/Network/Ref_OSI/IP).

## Request

-   The device asks the **server** whether the IP provided by the [DHCP
    server](/Notes/posts/Network/Phisicall/DHCP_server) is correct.
    -   ![DHCPRequest_visual.png](/Notes/DHCPRequest_visual.png "fig:")

## Acknowledgment

-   The [DHCP server](/Notes/posts/Network/Phisicall/DHCP_server) sends
    a [broadcast](/Notes/posts/for_later/broadcast) message to all.
    -   The device then configures itself with the IP that was
        originally sent in the offer and acknowledges.
    -   ![DHCPAcknowledgment_visual.png](/Notes/DHCPAcknowledgment_visual.png "fig:")

[DHCP relay](/Notes/posts//posts/DHCP_rely)
