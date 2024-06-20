---
date:: 02 04 2023
topic:: network-systmem
type:: network+
---
## Domain Name System
It translates the domain name such as przegląd koniski.pl 
to the aproparite IP addres  so the system knows how to get it 
- Dns could contains the inforamtion about user [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) name server (*the server that ranslates the target name name to and IP addres*)
	- **Dig shows the Dns**
		- ns for name server 
		- mx for mail exchange server 
- 
>[!tip]- result
>![dig hackers-arise.com mx_visual.png](/static/dig hackers-arise.com mx_visual.png)

Allot of the times its related with [BIND](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/BIND.md)


## Distribiuted database 
- Many DNS servers 
- 13 root server clusters (*Over 1000 acttual servers*)
- Hundreds of generic top-level domains (**gTLDs**) 
	- (*.com*,*.org*,*.net)
- Over 275 country code top-level domains (**ccTLDs**)
	- (*.us*,*.pl*,*.uk*)
## Changing Dns server
*(resolve.conf)*

#etc 
In order to do it change the file **/etc/resolv.conf** on your systmem
-  U can check it with the **resolvectl**

![ResolveConf_visual.png](/static/ResolveConf_visual.png)
>[!note]- For [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md) 
>If you’re using a **DHCP** address and the DHCP server provides a DNS setting, the
**DHCP** server will replace the contents of the file when it renews the DHCP address.

>[!quote]  [DNS_Queries](/DNS_Queries.md)