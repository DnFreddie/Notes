+++
title = 'web socets'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Web socets 
- [ports]({{< ref "posts/ports/ports.md" >}}) numbers and [IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}}) addresses **combined** creates **socets**
- Allows [duplex communication]({{< ref "posts/Network/Phisicall/duplex_communication.md" >}}) bettwen **the server  and the client** 
- Enables u to connect your **frontend with backend**
$$1$$
## Connection 
THe cleiant is sending HTTP  request to the 
server with a special HTPP header **connection Upgrade** 

IF the servers supporst websocet it rteturen code **101** **Switching Protcols** 
it enables *bidriectional communication*
>[!example]-
>It will be connected unti either parites sends a *close messege*
>![WebsocetConnectionUpgrade_visual.png](/Notes/WebsocetConnectionUpgrade_visual.png)

## [IPv4 address]({{< ref "posts/Network/basic_network_connections/IPv4_address.md" >}}) socets 

- Server 
	1. Server IP adress
	2. protocol
	3. server application
	4. port number 
- Client 
	1. Client IP adress 
	2. protocol
	3. clients [ports]({{< ref "posts/ports/ports.md" >}}) number 
==Docs==
[100s web socets](https://www.youtube.com/watch?v=ayUfHdHFCZE)
[[How to start Rust Chat App#ws-rs for websocket server|chatrs]]


>[!quote] [3-way Handshake]({{< ref "posts/for_later/3-way_Handshake.md" >}}) 