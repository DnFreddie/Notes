---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: TCP
---

    #alt-name streaming protocol 

## Transmission Control Protocol

It makes sure that data is transmmited in reaiable way

[PAR](/Notes/posts/for_later/PAR) -
<mark style="background: #72083D;">TCP is a connection base system
</mark> - U have to establisch the connetion with the device to send the
packet - **Ordering** - Tcp headers contains *sequence numbers* so if
the data get out of order during the transportation - If the packet is
*missing* we can request for the lost one - **Flow Control** - The
reciver can manage how much data is sent ## Flags

| Flag                 | Usage                                            |
|----------------------|--------------------------------------------------|
| URG(urgent)          | *Packet to be proccesed immidiatly*              |
| PSH(Push)            | *Transmits data immidiatly*                      |
| FIN(Finish)          | *No further transmition*                         |
| ACK(Acknowladgement) | *Acknowladges recepit of the packet*             |
| SYN(Synchronization) | *Initialaizes connection between hos and target* |
| RST(Resets)          | *Resets the connection*                          |

> \[!quote\] [3-way Handshake](/Notes/posts/for_later/3-way_Handshake)
> [Port Scanning](/Notes/posts/for_later/Port_Scanning) [Nagle’s
> Algorithm](/Notes/posts/Nagle's_Algorithm)
