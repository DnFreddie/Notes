---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Ports
---

## Ports

Port numbers designate where a packet will be delivered.  
*The location of the [service](/Notes/posts/Linux/service) on a
particular device.*  
They are handed to the service that manages these *port numbers*.  
![PortNumbers_visual.png](/PortNumbers_visual.png)

1

## Port Types

-   **Well-Known Ports** (Permanent port numbers)  
    ==Ports 0 through 1,023==
    -   Usually used on servers or services:
        1.  HTTP (*port 80*)
        2.  HTTPS (*port 443*)
-   **Ephemeral Ports** (Temporary port numbers)  
    ==Ports 1,024 through 65,535==

> \[!bug\] Ports are for communication, not security.  
> They need to be well-known.  
> Also, [TCP](/Notes/posts/Network/Ref_OSI/TCP) ports are not the same
> as [UDP](/Notes/posts/for_later/UDP) ports.

2

## Managing the Data

Different ports help differentiate the type of data being transferred.  
![ManagingPortsData_visual.png](/Notes/ManagingPortsData_visual.png)

3

## Common Ports

| Port                                                            | Name                                         | Function                                                                                                                                       |
|-----------------------------------------------------------------|----------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| **tcp/23**                                                      | [Telnet](/Notes/posts/protocols/telnet)      | Connecting to the container                                                                                                                    |
| **tcp/22**                                                      | [SSH](/Notes/posts/protocols/ssh)            | Connecting to the container                                                                                                                    |
| **udp/53** or **tcp/53** (for large transfers)                  | [DNS](/Notes/posts/Network/Phisicall/DNS)    | Convert names to [IP](/Notes/posts/Network/Ref_OSI/IP) addresses                                                                               |
| **tcp/25** (plain text) or **tcp/587** (encrypted)              | [SMTP](/Notes/posts/protocols/SMTP_protocol) | Server to server email transfer                                                                                                                |
| **tcp/22**                                                      | [SFTP]()                                     | Encrypted file transfer                                                                                                                        |
| **tcp/20** (active mode data), **tcp/21** (control)             | [FTP](/Notes/posts/protocols/FTP_protocol)   | Transfers files between systems                                                                                                                |
| **udp/67** and **udp/68**                                       | [DHCP](/Notes/posts/protocols/DHCP_protocol) | Automated configuration of [IP](/Notes/posts/Network/Ref_OSI/IP) and [subnet mask](/Notes/posts/Network/basic_network_connections/subnet_mask) |
| [TCP](/Notes/posts/Network/Ref_OSI/TCP) **/80**                 | [HTTP](/Notes/posts/protocols/HTTP)          | Web server communication                                                                                                                       |
| [TCP](/Notes/posts/Network/Ref_OSI/TCP) **/443**                | [HTTPS](/Notes/posts/protocols/HTTPS)        | Web server with encryption                                                                                                                     |
| [UDP](/Notes/posts/for_later/UDP) **/161**                      | [SNMP](/Notes/posts/protocols/SNMP_protocol) | Gather statistics from network devices                                                                                                         |
| [TCP](/Notes/posts/Network/Ref_OSI/TCP) **/3389**               | [RDP](/Notes/posts/protocols/RDP_protocol)   | Remote connection to the desktop                                                                                                               |
| [UDP](/Notes/posts/for_later/UDP) **/123**                      | [NTP](/Notes/posts/protocols/NTP_protocol)   | Synchronize the clocks of the system                                                                                                           |
| [TCP](/Notes/posts/Network/Ref_OSI/TCP) **/5060** and **/5061** | [SIP](/Notes/posts/protocols/SIP_protocol)   | Phone calls                                                                                                                                    |
| [ICMP](/Notes/posts/ICMP_protocol)                              | **Internet Control Message Protocol**        |                                                                                                                                                |
| [SQL Server](/Notes/posts/Sql_server) **/1433**                 |                                              |                                                                                                                                                |
| [SMB](/Notes/posts/SMB) **/445**                                | *Server Message Block*                       | Used for printers and routers in Windows                                                                                                       |

------------------------------------------------------------------------

[Web Sockets](/Notes/posts//posts/MAIN_Network+/web_socets) \|
[UDP](/Notes/posts/for_later/UDP) \|
[TCP](/Notes/posts/Network/Ref_OSI/TCP) \| [Port
Scanning](https://www.example.com)
