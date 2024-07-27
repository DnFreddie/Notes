+++
title = 'ports'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Ports

Port number designe where the package will be deliver 
*The location of the [service]({{< ref "posts/Linux/service.md" >}})   on particular device*
Its handed to the serviece that manage this *port numbers*
[PortNumbers_visual.png](/PortNumbers_visual.png)
$$1$$
## Port types 
- **None-emperal ports**(Permantent port numbers)
	==Ports 0 through 1,023==
	- Usually on server or servive 
		1.Htpp (*port 80*) 
		2. Htpps (*port 443*)
- **Emepral ports**(Temporary port numbers)
	==Ports 1,024 through 65,535==

>[!bug]- Ports are for communication not seciurity 
>They need to be well known
>also 
>[TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) ports are not the same as [UDP]({{< ref "posts/for later/UDP.md" >}}) ports 

$$2$$
## Managing the data 
- Diffrent ports enable to differentiet before the *transfered data*
	![MenaginPortsData_visual.png](/Notes/MenaginPortsData_visual.png)
$$3$$
## Common ports 
| port                                              | name                                   | fn                                           |     |     |
| ------------------------------------------------- | -------------------------------------- | -------------------------------------------- | --- | --- |
| **tcp/23**                                        | [telnet]({{< ref "posts/protocols/telnet.md" >}})                             | coonetcting to the container                 |     |     |
| **tcp/22**                                        | [ssh]({{< ref "posts/protocols/ssh.md" >}})                                | coonetcting to the container                 |     |     |
| **udp/53** or **tcp/53**(large transfers)         | [DNS]({{< ref "posts/Network/Phisicall/DNS.md" >}})                                | aConvert names to the [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) adress          |     |     |
| **tcp/25**(plain text) or **tcp/587**(encryptred) | [SMTP_protocol]({{< ref "posts/protocols/SMTP_protocol.md" >}})                      | Server to server email transfer              |     |     |
| **tcp/22**                                        | [[SFTP_protocol]]                      | Encrypted file transfer                      |     |     |
| **tcp/20**(active mode data),**tcp/21**(control)  | [FTP_protocol]({{< ref "posts/protocols/FTP_protocol.md" >}})                       | Transfers Files between system               |     |     |
| [[UDP]] **/67** ,[[UDP]] **/68**                  | [DHCP_protocol]({{< ref "posts/protocols/DHCP_protocol.md" >}})                      | Automated conf of [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) and [subnet mask]({{< ref "posts/Network/basic network connections/subnet mask.md" >}}) |     |     |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/80**                                   | [HTTP]({{< ref "posts/protocols/HTTP.md" >}})                               | Web server communication                     |     |     |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}})/443                                       | [HTTPS]({{< ref "posts/HTTPS.md" >}})                              | Web server with encryption                   |     |     |
| [UDP]({{< ref "posts/for later/UDP.md" >}}) **/161**                                  | [SNMP_protocol]({{< ref "posts/protocols/SNMP_protocol.md" >}})                      | Gather statisitc from network devices        |     |     |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}})**/3389**                                  | [RDP_protocol]({{< ref "posts/protocols/RDP_protocol.md" >}})                       | Remote connectio to the desktop              |     |     |
| [UDP]({{< ref "posts/for later/UDP.md" >}}) **/123**                                  | [NTP_protocol]({{< ref "posts/protocols/NTP_protocol.md" >}})                       | Synchronizing the clocs of the system        |     |     |
| [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/5060** [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **/5061**               | [SIP_protocol]({{< ref "posts/protocols/SIP_protocol.md" >}})                       | phone calls                                  |     |     |
| [ICMP_protocol]({{< ref "posts/ICMP_protocol.md" >}})                                 | **Internet Coontrol Message Protocol** |                                              |     |     |
| [Sql server]({{< ref "posts/Sql server.md" >}})/**1433**                           |                                        |                                              |     |     |
| [SMB]({{< ref "posts/SMB.md" >}})/**445**                                   | *Server Message Block*                 | used for the printers and router in windows  |     |     |
|                                                   |                                        |                                              |     |     |

>[!quote] [web socets]({{< ref "posts/MAIN Network+/web socets.md" >}})| [UDP]({{< ref "posts/for later/UDP.md" >}}) | [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}})  [[Port Scanning]] 



