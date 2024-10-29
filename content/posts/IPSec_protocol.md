---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: IPSec protocol
---

## Internet Protocol Security

Provides secriuty fir
[Network_OSI](/Notes/posts/Network/Ref_OSI/Network_OSI) - Authenticantio
nad encryption for every packet - ITs very standarlezed - **multi
vendor** implementation

Confidentiality and integrity/anti-replay - Encryption and packet
signing

## Core IPSec protocols

-   [AH_protocol](/Notes/posts/Ah_header) **Authentitacion Header**
-   \[ESP_prtocol\] **Encapslation Security Payload**

## Modes

**Original packet** -
![OriginalPacket_visual.png](/Notes/OriginalPacket_visual.png)

**Transport mode** - We add the IPSsec headears to encrypt the data but
not the [IP](/Notes/posts/Network/Ref_OSI/IP) -
![IPSecTransportMode_visual.png](/Notes/IPSecTransportMode_visual.png)
**Tunnelmode** - This also encrypts the
[IP](/Notes/posts/Network/Ref_OSI/IP) -
![IPSecTunnelMode_visual.png](/Notes/IPSecTunnelMode_visual.png)

> \[!quote\] [OSI Model](/Notes/posts/MAIN_Network+/OSI_Model)
> [VPN](/Notes/posts/VPN)
