---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: DHCP rely
---

1.  Device sends \[\[DHCP process#Discover\]\]
    -   ![RelyDsicoverd_viual.png](/Notes/RelyDsicoverd_viual.png "fig:")
2.  When **router revives the massaeage** is changes the **source
    address** to [DHCP
    server](/Notes/posts/Network/Phisicall/DHCP_server)  
3.  The the server sends \[\[DHCP process#Offer\]\] send back the ip to
    the router
    -   ![DHCPRelyOffer_visual.png](/Notes/DHCPRelyOffer_visual.png "fig:")
4.  The router recognieses the **DHCP reely config** and changes ip
    adress to be a brodcarts for local network

> \[!quote\] [DHCP_protocol](/Notes/posts/protocols/DHCP_protocol) [DHCP
> process](/Notes/posts/DHCP_process)
