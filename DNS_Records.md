---
date:: 2023-08-09
type:: network+
---
## DNS Records 
- The database records  of [DNS](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DNS.md) 
	- Over 30 of records  types 
		- ([IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) adresses certyficates host alias,names)


>[!example]- Sample  forward lookup file 
>![SampleForwardLookup_visual.png](/static/SampleForwardLookup_visual.png)
>[[DNS_Queries#Forword Lookup]]
### SOA 
**Start of Authority**
- Describes the DNS zone details
- **Structure**
	- IN SOA(*internet zone,Start of Authority*) with name of zone 
	- Serial number 
	- Refrech retry and expire timeframes
	- Casching duration [[DNS_Queries#TTL]]
 
>[!example]- 
>![SOABeginignFile_visual.png](/static/SOABeginignFile_visual.png)

$$1$$
### Address records(AAAA)

- Defines the [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) address of a host 
	- This is the **most popular query** 
- **A** records are  for [IPv4 address](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/IPv4 address.md)
	- Modyfie the A record to change the host name to [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) ==address  resolution==
- **AAAA** records are for [IPv6 address](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/IPv6 address.md) 
	- **Same DNS serverA** diffrent records 
>[!example]-
>![AAARecordsExample_visual.png](/static/AAARecordsExample_visual.png)

$$2$$
### CNAME 
**Cannonical name records**
- A name is an alias of another  *cannonical name*
	- ==One psychical server multiple services== 
 
>[!example]-
>![CannonicalName_visual.png](/static/CannonicalName_visual.png)

$$3$$
### SRV
**Service Records** 

>[!quote] [DNS_Queries](/DNS_Queries.md)