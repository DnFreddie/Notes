---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DNS Records
---

## DNS Records

-   The database records of [DNS](/Network/Phisicall/DNS)
    -   Over 30 types of records
        -   ([IP](/Network/Ref_OSI/IP) addresses,
            certificates, host aliases, names)

> \[!example\] Sample forward lookup file
> ![SampleForwardLookup_visual.png](/static/SampleForwardLookup_visual.png)
> \[\[DNS_Queries#Forward_Lookup\]\]

### SOA

**Start of Authority** - Describes the DNS zone details. -
**Structure:** - `IN SOA` (Internet zone, Start of Authority) with the
name of the zone - Serial number - Refresh, retry, and expire timeframes
- Caching duration ([TTL](/Network/DNS_Queries.md#TTL))

> \[!example\]
> ![SOABeginningFile_visual.png](/static/SOABeginningFile_visual.png)

### Address Records (AAAA)

-   Defines the [IP](/Network/Ref_OSI/IP) address of a host
    -   This is the **most popular query**
-   **A** records are for [IPv4
    address](/Network/basic_network_connections/IPv4_address)
    -   Modify the A record to change the host name to
        [IP](/Network/Ref_OSI/IP) (address resolution)
-   **AAAA** records are for [IPv6
    address](/Network/IPv6_address)
    -   **Same DNS server** with different records

> \[!example\]
> ![AAARecordsExample_visual.png](/static/AAARecordsExample_visual.png)

### CNAME

**Canonical Name Records** - A name is an alias of another *canonical
name* - (One physical server, multiple services)

> \[!example\]
> ![CanonicalName_visual.png](/static/CanonicalName_visual.png)

### SRV

**Service Records**

> \[!quote\] [DNS Queries](/Network/DNS_Queries)
