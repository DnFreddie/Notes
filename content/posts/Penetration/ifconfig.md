---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: ifconfig
---

## Ifconfig

Examine and interact with active network interfaces.

> \[!example\]
> ![IfconfigExample_visual.png](/Notes/IfconfigExample_visual.png)

This displays the most important information: 1. \[MAC Address\] 2.
[IP](/Notes/posts/Network/Ref_OSI/IP) 3.
[Broadcast](/Notes/posts/Penetration/Bcast) 4.
[Loopback](/Notes/posts/Penetration/lo)

**If you want to see the [IP](/Notes/posts/Network/Ref_OSI/IP), you have
to run `ip addr`.**

> \[!tip\] ![IpAddr_visual.png](/Notes/IpAddr_visual.png)

-   Enables you to connect and manipulate
    [LAN](/Notes/posts/Network/Network_Types/LAN)
-   You can easily switch your IP with:
    -   `sudo ifconfig eth0 new_ip`
    -   You can also change the [subnet
        mask](/Notes/posts/Network/basic_network_connections/subnet_mask)
        and [broadcast](/Notes/posts/Penetration/Bcast)
    -   Example of IP spoofing: > \[!example\] >
        `kali > ifconfig eth0 192.168.181.115 netmask 255.255.0.0 broadcast 192.168.1.255`

## Useful Flags

-   **Down**
    -   Marks an interface as not working (down), which prevents the
        system from trying to transmit messages through that interface.
        -   If possible, the `ifconfig` command also resets the
            interface to disable reception of messages.
        -   Routes that use the interface, however, are not
            automatically disabled.

------------------------------------------------------------------------

[iwconfig](/Notes/posts/Penetration/iwconfig)
[Spoofing](/Notes/posts/Linux/spoof)
