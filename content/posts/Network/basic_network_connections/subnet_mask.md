---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: subnet mask
---

    ## Subnet Mask 

Its dividing [Network_OSI](/Notes/posts/Network/Ref_OSI/Network_OSI)
into smaller *inner networks* *In decimals is the sereies of ones and
zeros at the end*(111111.11111.11111.0000) #alt-name **/24** Classes
Interdoamin Routing (**CIDR**)(‘*slach notation*’) In order to calculate
this we sum up all the ones **use cheat sheet** \>\[!example\]-
\>![CIDRCalculation_visual.png](/Notes/CIDRCalculation_visual.png)
\>\>\[!tip\]- Cheat sheet \>\>
![CheatSheetCIDR_visual.png](/Notes/CheatSheetCIDR_visual.png)

-   Each subnet is identified by a unique network address and a subnet
    mask, which is used to determine the range of IP addresses that
    belong to that subnet.
    -   e.g.,**255.255.255.0**
        -   Used by the local device **in conjunction with
            [IP](/Notes/posts/Network/Ref_OSI/IP)** to determnie what
            subnet its on
            -   *The subnet mask is not (ussualy transmited across the
                network)*

Now we use [VLSM](/Notes/posts/for_later/VLSM) instead of [subnet
classes](/Notes/posts/for_later/subnet_classes)

[subnet construction](/Notes/posts/for_later/subnet_construction)
\>\[!quote\] [defult
gateway](/Notes/posts/Network/basic_network_connections/defult_gateway)
[DHCP server](/Notes/posts/Network/Phisicall/DHCP_server)
