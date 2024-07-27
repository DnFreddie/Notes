
+++
title = 'MTU'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

# Constant
<mark style="background: #FFB86CA6;">Maximum Transmission Unit (MTU)</mark>

**Definition:** *Size of the data that can be sent through the network without being fragmented.*

## MTU Size Configuration
- MTU sizes are usually configured once.
  *Based on the network infrastructure, it does not change often.*

#### Challenges with MTU Discovery
- **Automated methods are inaccurate.**
- **Especially when** [ICMP Protocol]({{< ref "posts/ICMP_protocol.md" >}}) **is filtered.**

### Significant Concern for Tunneled Traffic ([VPN]({{< ref "posts/VPN.md" >}}))
*The tunnel might be smaller than your local Ethernet segment.*


## What If You Send Data Too Large with DF Set?
**DF =** *Don't Fragment*
- Routers will respond back and tell you to fragment the data.
- **You need to receive** [ICMP Protocol]({{< ref "posts/ICMP_protocol.md" >}}) **message (data is too large to send).**

### Check Whether Data Is Too Large
- Troubleshoot using [ping Command]({{< ref "posts/ping_command.md" >}})
  - Ping with **DF** forces a particular size of data:
    - 1500 bytes - 8 bytes [ICMP Protocol]({{< ref "posts/ICMP_protocol.md" >}}) header - 20 bytes [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) = **1472**
    - **Windows:**
      ```bash
      ping -f -l 1472 8.8.8.8
      ```
    - **macOS and Linux:**
      ```bash
      ping -D -s 1472 8.8.8.8
      ```


---
[Bandwidth]({{< ref "posts/Network/Phisicall/bandwidth.md" >}})  [Ifconfig]({{< ref "posts/Penetration/ifconfig.md" >}})

