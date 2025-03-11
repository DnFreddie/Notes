---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: ifconfig
---

## Ifconfig

Examine and interact with active network interfaces.

> \[!example\]
> ![IfconfigExample_visual.png](/static/IfconfigExample_visual.png)

This displays the most important information: 1. \[MAC Address\] 2.
[IP](/Network/Ref_OSI/IP) 3.
[Broadcast](/Penetration/Bcast) 4.
[Loopback](/Penetration/lo)

**If you want to see the [IP](/Network/Ref_OSI/IP), you have
to run `ip addr`.**

> \[!tip\] ![IpAddr_visual.png](/static/IpAddr_visual.png)

-   Enables you to connect and manipulate
    [LAN](/Network/Network_Types/LAN)
-   You can easily switch your IP with:
    -   `sudo ifconfig eth0 new_ip`
    -   You can also change the [subnet
        mask](/Network/basic_network_connections/subnet_mask)
        and [broadcast](/Penetration/Bcast)
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

[iwconfig](/Penetration/iwconfig)
[Spoofing](/Linux/spoof)
