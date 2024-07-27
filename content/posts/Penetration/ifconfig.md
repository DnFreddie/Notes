+++
title = 'ifconfig'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Ifconfig
Examine and interact with active network interfaces.

>[!example]
>![IfconfigExample_visual.png](/Notes/IfconfigExample_visual.png)

This displays the most important information:
1. [MAC Address]
2. [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}})
3. [Broadcast]({{< ref "posts/Penetration/Bcast.md" >}})
4. [Loopback]({{< ref "posts/Penetration/lo.md" >}})

**If you want to see the [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}), you have to run `ip addr`.**

>[!tip]
>![IpAddr_visual.png](/Notes/IpAddr_visual.png)

- Enables you to connect and manipulate [LAN]({{< ref "posts/Network/Network_Types/LAN.md" >}})
- You can easily switch your IP with:
  - `sudo ifconfig eth0 new_ip`
  - You can also change the [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}}) and [broadcast]({{< ref "posts/Penetration/Bcast.md" >}})
  - Example of IP spoofing:
    > [!example]
    > `kali > ifconfig eth0 192.168.181.115 netmask 255.255.0.0 broadcast 192.168.1.255`

## Useful Flags

- **Down**
  - Marks an interface as not working (down), which prevents the system from trying to transmit messages through that interface.
    - If possible, the `ifconfig` command also resets the interface to disable reception of messages.
    - Routes that use the interface, however, are not automatically disabled.

---

[iwconfig]({{< ref "posts/Penetration/iwconfig.md" >}})  [Spoofing]({{< ref "posts/Linux/spoof.md" >}})

