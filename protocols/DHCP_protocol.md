---
date:: 2023-07-28
type:: network+
---
## Dynamic Host Configuration 
- [UDP](/obisdian_ntoes/for later/UDP.md) **/67** ,[UDP](/obisdian_ntoes/for later/UDP.md) **/68** 
- Requiers a [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  
	- In home this is incorporated to your home router 
 

 
 $$1$$
## Assainging Ip

### Dynamic / pooled 
- [IPv4 address](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/IPv4 address.md) are assaigned in real-time from a pool 
- Each system is given a ip for a certian amout of time and must renew at set intervals 


### DHCP reservation 
- Addresses are assigned by MAC address in the [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  
- Quickly manage adresses from one location 

$$2$$
![DHCP process](/DHCP process.md)

$$3$$
## Managing DHCP in the enterprise 

Limited connections 
 - Uses [IPv4 address](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/IPv4 address.md) [[broadcast]] domain
 - Stops at router 
Multiple servers neeeded for **redundacy** 
 - Across diffrent location
Scalibity is always an issue 
 - May not want to mangae [DHCP server](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DHCP server.md)  in every remote location 
$$4$$

## IP helper 
![DHCP rely](/DHCP rely.md)
$$5$$

>[!quote] [[ports#Common ports]]