---
date:: 2023-07-07
type:: network+
---
## Ports

Port number designe where the package will be deliver 
*The location of the [service](/obisdian_ntoes/notes_obsidian/Linux/service.md)   on particular device*
Its handed to the serviece that manage this *port numbers*
[PortNumbers_visual.png](/static/PortNumbers_visual.png)
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
>[TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) ports are not the same as [UDP](/obisdian_ntoes/for later/UDP.md) ports 

$$2$$
## Managing the data 
- Diffrent ports enable to differentiet before the *transfered data*
	![MenaginPortsData_visual.png](/static/MenaginPortsData_visual.png)
$$3$$
## Common ports 
| port                                              | name                                   | fn                                           |     |     |
| ------------------------------------------------- | -------------------------------------- | -------------------------------------------- | --- | --- |
| **tcp/23**                                        | [telnet](/protocols/telnet.md)                             | coonetcting to the container                 |     |     |
| **tcp/22**                                        | [ssh](/protocols/ssh.md)                                | coonetcting to the container                 |     |     |
| **udp/53** or **tcp/53**(large transfers)         | [DNS](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DNS.md)                                | aConvert names to the [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) adress          |     |     |
| **tcp/25**(plain text) or **tcp/587**(encryptred) | [SMTP_protocol](/protocols/SMTP_protocol.md)                      | Server to server email transfer              |     |     |
| **tcp/22**                                        | [[SFTP_protocol]]                      | Encrypted file transfer                      |     |     |
| **tcp/20**(active mode data),**tcp/21**(control)  | [FTP_protocol](/protocols/FTP_protocol.md)                       | Transfers Files between system               |     |     |
| [[UDP]] **/67** ,[[UDP]] **/68**                  | [DHCP_protocol](/protocols/DHCP_protocol.md)                      | Automated conf of [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) and [subnet mask](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/subnet mask.md) |     |     |
| [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) **/80**                                   | [HTTP](/protocols/HTTP.md)                               | Web server communication                     |     |     |
| [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md)/443                                       | [HTTPS](/HTTPS.md)                              | Web server with encryption                   |     |     |
| [UDP](/obisdian_ntoes/for later/UDP.md) **/161**                                  | [SNMP_protocol](/protocols/SNMP_protocol.md)                      | Gather statisitc from network devices        |     |     |
| [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md)**/3389**                                  | [RDP_protocol](/protocols/RDP_protocol.md)                       | Remote connectio to the desktop              |     |     |
| [UDP](/obisdian_ntoes/for later/UDP.md) **/123**                                  | [NTP_protocol](/protocols/NTP_protocol.md)                       | Synchronizing the clocs of the system        |     |     |
| [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) **/5060** [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) **/5061**               | [SIP_protocol](/protocols/SIP_protocol.md)                       | phone calls                                  |     |     |
| [ICMP_protocol](/ICMP_protocol.md)                                 | **Internet Coontrol Message Protocol** |                                              |     |     |
| [Sql server](/Sql server.md)/**1433**                           |                                        |                                              |     |     |
| [SMB](/SMB.md)/**445**                                   | *Server Message Block*                 | used for the printers and router in windows  |     |     |
|                                                   |                                        |                                              |     |     |

>[!quote] [web socets](/obisdian_ntoes/notes_obsidian/MAIN Network+/web socets.md)| [UDP](/obisdian_ntoes/for later/UDP.md) | [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md)  [[Port Scanning]] 



