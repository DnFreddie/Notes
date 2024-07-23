+++
title = 'IP'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## The ethernet protocol
**The [MTU](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Network Types/MTU.md) of ip is 1500 bytes!**
## IP Flags
*they deal with the fragmentation of data*

## IP fragmentation
**Fragments are always in multiples of 8**
becouse of the number of fragmentation
offsets bits in the <mark style="background: #FFB86CA6;">IP header</mark>

## Holding data 
The data is beeing hold im the [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) [UDP](/obisdian_ntoes/for later/UDP.md) 

## Transfering data 
The data ins *Encapsulated* by the IP protocol
- [Ethernet](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/Ethernet.md)  **frame**
>![TransferEthernetFrame_visual.png](/TransferEthernetFrame_visual.png)