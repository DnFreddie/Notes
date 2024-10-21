---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DNS_Queries
---

## Recursive query

-   Delegate the lookup to a DNS Server
    -   The DNS Serveer does the work adn reports back
        -   ![ReqursiveQuery_visual.png](/Notes/ReqursiveQuery_visual.png "fig:")
-   Large DNS [cache](/Notes/posts/nixos/cache) provides a speed
    advatage

## Iterative queries

-   Do all queries ==yourself==
    -   ![IterativeDNSQuery_visual.png](/Notes/IterativeDNSQuery_visual.png "fig:")
-   Your DNS [cache](/Notes/posts/nixos/cache) is specyfic to ure
    device  
    1
    ### TTL *Time to live*
-   Configured on the authoritative server
-   Specyfie how long [cache](/Notes/posts/nixos/cache) is
    **valid** >\[!bug\]- >A very long TTL can cause problems if changes
    are made

2
## Answers \>\[!example\]- [nslookup](/Notes/posts/Linux/nslookup)
answers
\>![AnswersDNSAuthority_visiual.png](/Notes/AnswersDNSAuthority_visiual.png)
### The Authority The DNS server is the authority for the zone

### Non-authoraitve

-   Does not cotain the zone source files
    -   **Propably casched information**

3
## Lookups [dig_command](/Notes/posts/dig_command)

### Forword Lookup

-   Provide the DNS server with [FQDN](/Notes/posts/FQDN)
-   DNS server provides an [IP](/Notes/posts/Network/Ref_OSI/IP) addres

### Reverse DNS lookup

-   Provides the DNS server with an
    [IP](/Notes/posts/Network/Ref_OSI/IP) addres
-   **DNS server** provides an
    [FQDN](/Notes/posts/FQDN) >\[!example\]- >![ReverseDNSExample_visual.png](/Notes/ReverseDNSExample_visual.png)

------------------------------------------------------------------------

[DNS](/Notes/posts/Network/Phisicall/DNS)
[DNS_Records](/Notes/posts/Network/DNS_Records)
