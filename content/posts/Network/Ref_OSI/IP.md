+++
title = 'IP'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## The ethernet protocol
**The [MTU]({{< ref "posts/Network/Network_Types/MTU.md" >}}) of ip is 1500 bytes!**
## IP Flags
*they deal with the fragmentation of data*

## IP fragmentation
**Fragments are always in multiples of 8**
becouse of the number of fragmentation
offsets bits in the <mark style="background: #FFB86CA6;">IP header</mark>

## Holding data 
The data is beeing hold im the [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) [UDP]({{< ref "posts/for_later/UDP.md" >}}) 

## Transfering data 
The data ins *Encapsulated* by the IP protocol
- [Ethernet]({{< ref "posts/Network/Ref_OSI/Ethernet.md" >}})  **frame**
>![TransferEthernetFrame_visual.png](/Notes/TransferEthernetFrame_visual.png)
