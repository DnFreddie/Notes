---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DHCP protocol
---

## Dynamic Host Configuration

-   [UDP](/for_later/UDP) **/67**
    ,[UDP](/for_later/UDP) **/68**
-   Requiers a [DHCP server](/Network/Phisicall/DHCP_server)
    -   In home this is incorporated to your home router

1
## Assainging Ip

### Dynamic / pooled

-   [IPv4
    address](/Network/basic_network_connections/IPv4_address)
    are assaigned in real-time from a pool
-   Each system is given a ip for a certian amout of time and must renew
    at set intervals

### DHCP reservation

-   Addresses are assigned by MAC address in the [DHCP
    server](/Network/Phisicall/DHCP_server)  
-   Quickly manage adresses from one location

2
![DHCP process](/DHCP_process)

3
## Managing DHCP in the enterprise

Limited connections - Uses [IPv4
address](/Network/basic_network_connections/IPv4_address)
[broadcast](/for_later/broadcast) domain - Stops at router
Multiple servers neeeded for **redundacy** - Across diffrent location
Scalibity is always an issue - May not want to mangae [DHCP
server](/Network/Phisicall/DHCP_server) in every remote
location
4

## IP helper

![DHCP rely](/DHCP_rely)
5

> \[!quote\] \[\[ports#Common ports\]\]
