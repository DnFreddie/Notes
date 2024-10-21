---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DNS Records
---

## DNS Records

-   The database records of [DNS](/Notes/posts/Network/Phisicall/DNS)
    -   Over 30 types of records
        -   ([IP](/Notes/posts/Network/Ref_OSI/IP) addresses,
            certificates, host aliases, names)

> \[!example\] Sample forward lookup file
> ![SampleForwardLookup_visual.png](/Notes/SampleForwardLookup_visual.png)
> \[\[DNS_Queries#Forward_Lookup\]\]

### SOA

**Start of Authority** - Describes the DNS zone details. -
**Structure:** - `IN SOA` (Internet zone, Start of Authority) with the
name of the zone - Serial number - Refresh, retry, and expire timeframes
- Caching duration ([TTL](/Notes/posts/Network/DNS_Queries.md#TTL))

> \[!example\]
> ![SOABeginningFile_visual.png](/Notes/SOABeginningFile_visual.png)

### Address Records (AAAA)

-   Defines the [IP](/Notes/posts/Network/Ref_OSI/IP) address of a host
    -   This is the **most popular query**
-   **A** records are for [IPv4
    address](/Notes/posts/Network/basic_network_connections/IPv4_address)
    -   Modify the A record to change the host name to
        [IP](/Notes/posts/Network/Ref_OSI/IP) (address resolution)
-   **AAAA** records are for [IPv6
    address](/Notes/posts/Network/IPv6_address)
    -   **Same DNS server** with different records

> \[!example\]
> ![AAARecordsExample_visual.png](/Notes/AAARecordsExample_visual.png)

### CNAME

**Canonical Name Records** - A name is an alias of another *canonical
name* - (One physical server, multiple services)

> \[!example\]
> ![CanonicalName_visual.png](/Notes/CanonicalName_visual.png)

### SRV

**Service Records**

> \[!quote\] [DNS Queries](/Notes/posts/Network/DNS_Queries)
