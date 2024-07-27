+++
title = 'IPSec_protocol'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Internet Protocol Security 
Provides secriuty fir [Network_OSI]({{< ref "posts/Network/Ref_OSI/Network_OSI.md" >}})
 - Authenticantio nad encryption for every packet 
 - ITs very standarlezed 
	 - **multi vendor** implementation 


Confidentiality and integrity/anti-replay 
 - Encryption and packet signing 
	

## Core IPSec protocols 
- [AH_protocol]({{< ref "posts/Ah_header.md" >}}) **Authentitacion Header**
- [ESP_prtocol] **Encapslation Security Payload**

## Modes 
**Original packet**
 - ![OriginalPacket_visual.png](/Notes/OriginalPacket_visual.png)

**Transport mode**
 - We add the IPSsec headears to encrypt the data but not the [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}})
	 - ![IPSecTransportMode_visual.png](/Notes/IPSecTransportMode_visual.png)
**Tunnelmode**
 - This also encrypts the [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}})
	 -  ![IPSecTunnelMode_visual.png](/Notes/IPSecTunnelMode_visual.png)

>[!quote] [OSI Model]({{< ref "posts/MAIN_Network+/OSI_Model.md" >}})  [VPN]({{< ref "posts/VPN.md" >}})
