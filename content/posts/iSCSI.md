---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: iSCSI
---

## Internet Small computer System Interface

-   Send **SCSI commands**

-   Now [RFC_Standard](/RFC_Standard)

-   Makes **remote disk** look and operate like **local disk**

    -   Like [Fibre_chanel](/Fibre_chanel)

-   Can be managed quite well in software

    -   Drivers available for many operating systems
    -   ==No proprietary topologies or hardwere needed==

-   To proviede **redudance** use [Multipath](/Multipath)
    techinqe

> \[!tip\]- Conecti iSCSI on boot 1. edit iscsid.con and change the
> mannual startup to *automatic* 2. do the same in */etc/iscsi/nodes* in
> every file

> \[!quote\] [FCoE](/FCoE)
> [SAN](/Network/Data/SAN)
> [NAS](/Network/Data/NAS)
