---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DNS Queries
---

## Recursive query

-   Delegate the lookup to a DNS Server
    -   The DNS Serveer does the work adn reports back
        -   ![ReqursiveQuery_visual.png](/static/ReqursiveQuery_visual.png "fig:")
-   Large DNS [cache](/nixos/cache) provides a speed
    advatage

## Iterative queries

-   Do all queries ==yourself==
    -   ![IterativeDNSQuery_visual.png](/static/IterativeDNSQuery_visual.png "fig:")
-   Your DNS [cache](/nixos/cache) is specyfic to ure
    device  
    1
    ### TTL *Time to live*
-   Configured on the authoritative server
-   Specyfie how long [cache](/nixos/cache) is
    **valid** >\[!bug\]- >A very long TTL can cause problems if changes
    are made

2
## Answers \>\[!example\]- [nslookup](/Linux/nslookup)
answers
\>![AnswersDNSAuthority_visiual.png](/static/AnswersDNSAuthority_visiual.png)
### The Authority The DNS server is the authority for the zone

### Non-authoraitve

-   Does not cotain the zone source files
    -   **Propably casched information**

3
## Lookups [dig_command](/dig_command)

### Forword Lookup

-   Provide the DNS server with [FQDN](/FQDN)
-   DNS server provides an [IP](/Network/Ref_OSI/IP) addres

### Reverse DNS lookup

-   Provides the DNS server with an
    [IP](/Network/Ref_OSI/IP) addres
-   **DNS server** provides an
    [FQDN](/FQDN) >\[!example\]- >![ReverseDNSExample_visual.png](/static/ReverseDNSExample_visual.png)

------------------------------------------------------------------------

[DNS](/Network/Phisicall/DNS)
[DNS_Records](/Network/DNS_Records)
