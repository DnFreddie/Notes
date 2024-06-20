---
date:: 20 03 2023

---
#Constant 
 <mark style="background: #FFB86CA6;">Maximum Transmition Unit</mark>
#def *Size of the data that can be send through the network without being fragmented*

## MTU size are ussualy configured once
*Based on the network infrasturture it does not change often*

#### It's hard to know MTU all the way through the path 
- **Automated Methods are inaccurate**
- **Especailly when** [ICMP_protocol](/ICMP_protocol.md) **is filtered**

### A siginficant concern for tunneled  traffic([VPN](/VPN.md))
*The tunnele might be smaller then your local Ethernet segment*
$$1$$

## IF u send to large data wit DF set?
**Df = ** *dont fragment*
- Routers will respond back andd tell you to fragment
- **Hope u get the** [ICMP_protocol](/ICMP_protocol.md) message(*data is to large to sent*)
### Check weather data is to large!
- Troubleshoot using [ping_command](/ping_command.md)
	- Ping with **DF** force a perticular size of data
	  1500 bytes - 8bytes [ICMP_protocol](/ICMP_protocol.md) headr - 20bytes [[IP]] = **1472**
		- **Widnows**
		  ```
		  ping -f -l 1472 8.8.8.8 
		  ```
		- MAC and Linux
		  ```
		ping -D -s 1472 8.8.8.8
		  ```

$$2$$
>[!quote] 
>[bandwidth](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/bandwidth.md) [[ifconfig]] 