---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: ICMP protocol
---

## Internet Control Message Protocol

### Usage

-   Diagnose network issues (*use ping and nping*)
    -   Check weather the dat is raching ht eintneted destinaiton(in
        time)
    -   Used on the network devieces such a routers
        -   Can be used in DDosS

[Docs](%22https://www.cloudflare.com/learning/ddos/glossary/internet-control-message-protocol-icmp/%22)

**Devices Send messages between each other** (menagagment and control of
devices across devices)

-   Text messaging for your network devices
-   Another prtocol carried by Ip
    -   Not used for data trasfer
-   Devices can request and reply to administrativer requests
    [ping_command](/ping_command)
    -   When u send ping u send the **ICMP packet** and get **ICP
        packet** in response
-   Devices can send massege whetn things dont go well (*message where
    created becouse of ICMP*)
    -   The network u’re trying to reach is not reachable from here
    -   Your time-to-live expired

> \[!quote\] [ports](/ports/ports)
