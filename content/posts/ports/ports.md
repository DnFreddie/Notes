+++
title = 'Ports'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Ports

Port numbers designate where a packet will be delivered.  
*The location of the [service]({{< ref "posts/Linux/service.md" >}}) on a particular device.*  
They are handed to the service that manages these *port numbers*.  
![PortNumbers_visual.png](/PortNumbers_visual.png)

$$1$$

## Port Types

- **Well-Known Ports** (Permanent port numbers)  
  ==Ports 0 through 1,023==
  - Usually used on servers or services:
    1. HTTP (*port 80*)
    2. HTTPS (*port 443*)

- **Ephemeral Ports** (Temporary port numbers)  
  ==Ports 1,024 through 65,535==

>[!bug] Ports are for communication, not security.  
>They need to be well-known.  
>Also, [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) ports are not the same as [UDP]({{< ref "posts/for_later/UDP.md" >}}) ports.

$$2$$

## Managing the Data

Different ports help differentiate the type of data being transferred.  
![ManagingPortsData_visual.png](/Notes/ManagingPortsData_visual.png)

$$3$$

## Common Ports

| Port                                       | Name                                          | Function                                               |
|--------------------------------------------|-----------------------------------------------|--------------------------------------------------------|
| **tcp/23**                                 | [Telnet]({{< ref "posts/protocols/telnet.md" >}})        | Connecting to the container                            |
| **tcp/22**                                 | [SSH]({{< ref "posts/protocols/ssh.md" >}})           | Connecting to the container                            |
| **udp/53** or **tcp/53** (for large transfers) | [DNS]({{< ref "posts/Network/Phisicall/DNS.md" >}})      | Convert names to [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) addresses |
| **tcp/25** (plain text) or **tcp/587** (encrypted) | [SMTP]({{< ref "posts/protocols/SMTP_protocol.md" >}})  | Server to server email transfer                       |
| **tcp/22**                                 | [SFTP]()    | Encrypted file transfer                                |
| **tcp/20** (active mode data), **tcp/21** (control) | [FTP]({{< ref "posts/protocols/FTP_protocol.md" >}})       | Transfers files between systems                       |
| **udp/67** and **udp/68**                  | [DHCP]({{< ref "posts/protocols/DHCP_protocol.md" >}})      | Automated configuration of [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) and [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}}) |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/80** | [HTTP]({{< ref "posts/protocols/HTTP.md" >}})       | Web server communication                               |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/443** | [HTTPS]({{< ref "posts/protocols/HTTPS.md" >}})      | Web server with encryption                             |
| [UDP]({{< ref "posts/for_later/UDP.md" >}}) **/161** | [SNMP]({{< ref "posts/protocols/SNMP_protocol.md" >}})      | Gather statistics from network devices                 |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/3389** | [RDP]({{< ref "posts/protocols/RDP_protocol.md" >}})       | Remote connection to the desktop                       |
| [UDP]({{< ref "posts/for_later/UDP.md" >}}) **/123** | [NTP]({{< ref "posts/protocols/NTP_protocol.md" >}})       | Synchronize the clocks of the system                   |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/5060** and **/5061** | [SIP]({{< ref "posts/protocols/SIP_protocol.md" >}})       | Phone calls                                            |
| [ICMP]({{< ref "posts/ICMP_protocol.md" >}})   | **Internet Control Message Protocol**         |                                                        |
| [SQL Server]({{< ref "posts/Sql_server.md" >}}) **/1433** |                                        |                                                        |
| [SMB]({{< ref "posts/SMB.md" >}}) **/445**      | *Server Message Block*                        | Used for printers and routers in Windows               |

---
[Web Sockets]({{< ref "/posts/MAIN_Network+/web_socets.md" >}}) | [UDP]({{< ref "posts/for_later/UDP.md" >}}) | [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) | [Port Scanning](https://www.example.com)

