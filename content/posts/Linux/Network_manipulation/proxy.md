---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: proxy
---

## Proxies

To confighure proxies use **etc/proxychains.conf** \>\[!example\] \>- If
you’re not adding your own proxies and want to use Tor, leave this as it
is. If you are not using Tor, you’ll need to comment out this line
![ProxyList_visual.png](/Notes/ProxyList_visual.png)

<mark style="background: #FF5582A6;">To make it hapen u have to type
**proxychains browser domain**</mark> ### Random chainging In order to
change the proxy server randomly u have to set *chain* to the **dynamic
chain** adn specyfie the *len* of the **chain** \>\[!example\]-
\>![DynamicChainn_visual.png](/Notes/DynamicChainn_visual.png)

## Proxy Types

-   **Datacenter/ISP**
    1.  Quick
    2.  Based on quantity
    3.  Expensive
    4.  Recognized by bot protection
-   Residential
    1.  Slower
    2.  High quantity
    3.  based on data plan

> \[!quote\]
> [traceroute](/Notes/posts/Linux/Network_manipulation/traceroute)
> [ping_command](/Notes/posts/ping_command)
> [sneakers_bots_project](/Notes/posts/sneakers_bots_project)
