+++
title = 'DNS_Queries'
date = 2024-07-22T09:10:24+02:00
draft = false
+++


## Recursive query 
- Delegate the lookup to a DNS Server 
	- The DNS Serveer does the work adn reports back
		- ![ReqursiveQuery_visual.png](/Notes/ReqursiveQuery_visual.png)
- Large DNS [cache]({{< ref "posts/nixos/cache.md" >}}) provides a speed advatage

## Iterative queries 
- Do all queries ==yourself==
	- ![IterativeDNSQuery_visual.png](/Notes/IterativeDNSQuery_visual.png)
- Your DNS [cache]({{< ref "posts/nixos/cache.md" >}})  is specyfic to ure device  
$$1$$
### TTL
*Time to live*
- Configured on the authoritative server 
- Specyfie how long [cache]({{< ref "posts/nixos/cache.md" >}}) is **valid**
>[!bug]-
>A very long TTL can cause problems if changes are made 

$$2$$
## Answers 
>[!example]- [nslookup]({{< ref "posts/Linux/nslookup.md" >}}) answers 
>![AnswersDNSAuthority_visiual.png](/Notes/AnswersDNSAuthority_visiual.png)
### The Authority 
The DNS server is the authority for the zone 

### Non-authoraitve 
- Does not cotain the zone source files 
	- **Propably casched information**

$$3$$
## Lookups 
[dig_command]({{< ref "posts/dig_command.md" >}})

### Forword Lookup 
- Provide the DNS server with [FQDN]({{< ref "posts/FQDN.md" >}})
- DNS server provides an [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) addres 

### Reverse DNS lookup 
- Provides the DNS server with an [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) addres 
- **DNS server** provides an [FQDN]({{< ref "posts/FQDN.md" >}}) 
>[!example]-
>![ReverseDNSExample_visual.png](/Notes/ReverseDNSExample_visual.png)

---
[DNS]({{< ref "posts/Network/Phisicall/DNS.md" >}}) [DNS_Records]({{< ref "posts/Network/DNS_Records.md" >}})
