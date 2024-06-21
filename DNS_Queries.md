---
date:: 2023-08-07
type:: network+
---

## Recursive query 
- Delegate the lookup to a DNS Server 
	- The DNS Serveer does the work adn reports back
		- ![ReqursiveQuery_visual.png](/static/ReqursiveQuery_visual.png)
- Large DNS [cache](/nixos/cache.md) provides a speed advatage

## Iterative queries 
- Do all queries ==yourself==
	- ![IterativeDNSQuery_visual.png](/static/IterativeDNSQuery_visual.png)
- Your DNS [cache](/nixos/cache.md)  is specyfic to ure device  
$$1$$
### TTL
*Time to live*
- Configured on the authoritative server 
- Specyfie how long [cache](/nixos/cache.md) is **valid**
>[!bug]-
>A very long TTL can cause problems if changes are made 

$$2$$
## Answers 
>[!example]- [nslookup](/obisdian_ntoes/notes_obsidian/Linux/nslookup.md) answers 
>![AnswersDNSAuthority_visiual.png](/static/AnswersDNSAuthority_visiual.png)
### The Authority 
The DNS server is the authority for the zone 

### Non-authoraitve 
- Does not cotain the zone source files 
	- **Propably casched information**

$$3$$
## Lookups 
[dig_command](/dig_command.md)

### Forword Lookup 
- Provide the DNS server with [FQDN](/FQDN.md)
- DNS server provides an [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) addres 

### Reverse DNS lookup 
- Provides the DNS server with an [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) addres 
- **DNS server** provides an [FQDN](/FQDN.md) 
>[!example]-
>![ReverseDNSExample_visual.png](/static/ReverseDNSExample_visual.png)

>[!quote] [DNS](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DNS.md) [DNS_Records](/DNS_Records.md)