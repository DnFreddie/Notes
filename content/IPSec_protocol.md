---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: IPSec protocol
---

## Internet Protocol Security

Provides secriuty fir
[Network_OSI](/Network/Ref_OSI/Network_OSI) - Authenticantio
nad encryption for every packet - ITs very standarlezed - **multi
vendor** implementation

Confidentiality and integrity/anti-replay - Encryption and packet
signing

## Core IPSec protocols

-   [AH_protocol](/Ah_header) **Authentitacion Header**
-   \[ESP_prtocol\] **Encapslation Security Payload**

## Modes

**Original packet** -
![OriginalPacket_visual.png](/static/OriginalPacket_visual.png)

**Transport mode** - We add the IPSsec headears to encrypt the data but
not the [IP](/Network/Ref_OSI/IP) -
![IPSecTransportMode_visual.png](/static/IPSecTransportMode_visual.png)
**Tunnelmode** - This also encrypts the
[IP](/Network/Ref_OSI/IP) -
![IPSecTunnelMode_visual.png](/static/IPSecTunnelMode_visual.png)

> \[!quote\] [OSI Model](/MAIN_Network+/OSI_Model)
> [VPN](/VPN)
