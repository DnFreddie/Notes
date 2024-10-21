---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: web socets
---

## Web socets

-   [ports](/Notes/posts/ports/ports) numbers and
    [IP](/Notes/posts/Network/Ref_OSI/IP) addresses **combined** creates
    **socets**
-   Allows [duplex
    communication](/Notes/posts/Network/Phisicall/duplex_communication)
    bettwen **the server and the client**
-   Enables u to connect your **frontend with backend**
    1
    ## Connection THe cleiant is sending HTTP request to the server with
    a special HTPP header **connection Upgrade**

IF the servers supporst websocet it rteturen code **101** **Switching
Protcols** it enables *bidriectional communication* \>\[!example\]- \>It
will be connected unti either parites sends a *close messege*
\>![WebsocetConnectionUpgrade_visual.png](/Notes/WebsocetConnectionUpgrade_visual.png)

## [IPv4 address](/Notes/posts/Network/basic_network_connections/IPv4_address) socets

-   Server
    1.  Server IP adress
    2.  protocol
    3.  server application
    4.  port number
-   Client
    1.  Client IP adress
    2.  protocol
    3.  clients [ports](/Notes/posts/ports/ports) number ==Docs== [100s
        web socets](https://www.youtube.com/watch?v:%20ayUfHdHFCZE)
        \[\[How to start Rust Chat App#ws-rs for websocket
        server\|chatrs\]\]

> \[!quote\] [3-way Handshake](/Notes/posts/for_later/3-way_Handshake)
