---
date:: 03 04 2023
topic:: network-server-baisic 
type:: Linux
---
## Dynamic Host Configuration Server
- The DHCP assaigns [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) address to all devisces on the [subnet mask](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/subnet mask.md)
	- IT keeps all the log files of wich machine is
		<mark style="background: #FF5582A6;">allocated to which IP address at anyone time</mark> 
		- The DHCP is running in the bacgorund as *dhcp dameon*
- In oreder to connect from [LAN](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Network Types/LAN.md) u **must have** DHCP assaigned IP 
	- You can do it by
		- either restart or 
		- by calling DHCP with **dhclient** and the interface 
			- *Note that diffrent distors may have diffrents DHCP clients*
   >[!example] 
   >kali >dhclient eth0
   >>[!tip]- Whats happening 
   >>The dhclient command sends a DHCPDISCOVER request from the network
interface specified (here, eth0). 
It then receives an offer (DHCPOFFER) from the
DHCP server (192.168.181.131 in this case) and confirms the IP assignment to the DHCP server with a dhcp request.




> [!quote] [DHCP_protocol](/protocols/DHCP_protocol.md) 
> [Automatic Private IP Addessing](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/Automatic Private IP Addessing.md) 