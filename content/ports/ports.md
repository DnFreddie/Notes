---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Ports
---

## Ports

Port numbers designate where a packet will be delivered.  
*The location of the [service](/Linux/service) on a
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
> Also, [TCP](/Network/Ref_OSI/TCP) ports are not the same
> as [UDP](/for_later/UDP) ports.

2

## Managing the Data

Different ports help differentiate the type of data being transferred.  
![ManagingPortsData_visual.png](/static/ManagingPortsData_visual.png)

3

## Common Ports

| Port                                                            | Name                                         | Function                                                                                                                                       |
|-----------------------------------------------------------------|----------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| **tcp/23**                                                      | [Telnet](/protocols/telnet)      | Connecting to the container                                                                                                                    |
| **tcp/22**                                                      | [SSH](/protocols/ssh)            | Connecting to the container                                                                                                                    |
| **udp/53** or **tcp/53** (for large transfers)                  | [DNS](/Network/Phisicall/DNS)    | Convert names to [IP](/Network/Ref_OSI/IP) addresses                                                                               |
| **tcp/25** (plain text) or **tcp/587** (encrypted)              | [SMTP](/protocols/SMTP_protocol) | Server to server email transfer                                                                                                                |
| **tcp/22**                                                      | [SFTP]()                                     | Encrypted file transfer                                                                                                                        |
| **tcp/20** (active mode data), **tcp/21** (control)             | [FTP](/protocols/FTP_protocol)   | Transfers files between systems                                                                                                                |
| **udp/67** and **udp/68**                                       | [DHCP](/protocols/DHCP_protocol) | Automated configuration of [IP](/Network/Ref_OSI/IP) and [subnet mask](/Network/basic_network_connections/subnet_mask) |
| [TCP](/Network/Ref_OSI/TCP) **/80**                 | [HTTP](/protocols/HTTP)          | Web server communication                                                                                                                       |
| [TCP](/Network/Ref_OSI/TCP) **/443**                | [HTTPS](/protocols/HTTPS)        | Web server with encryption                                                                                                                     |
| [UDP](/for_later/UDP) **/161**                      | [SNMP](/protocols/SNMP_protocol) | Gather statistics from network devices                                                                                                         |
| [TCP](/Network/Ref_OSI/TCP) **/3389**               | [RDP](/protocols/RDP_protocol)   | Remote connection to the desktop                                                                                                               |
| [UDP](/for_later/UDP) **/123**                      | [NTP](/protocols/NTP_protocol)   | Synchronize the clocks of the system                                                                                                           |
| [TCP](/Network/Ref_OSI/TCP) **/5060** and **/5061** | [SIP](/protocols/SIP_protocol)   | Phone calls                                                                                                                                    |
| [ICMP](/ICMP_protocol)                              | **Internet Control Message Protocol**        |                                                                                                                                                |
| [SQL Server](/Sql_server) **/1433**                 |                                              |                                                                                                                                                |
| [SMB](/SMB) **/445**                                | *Server Message Block*                       | Used for printers and routers in Windows                                                                                                       |

------------------------------------------------------------------------

[Web Sockets](//posts/MAIN_Network+/web_socets) \|
[UDP](/for_later/UDP) \|
[TCP](/Network/Ref_OSI/TCP) \| [Port
Scanning](https://www.example.com)
