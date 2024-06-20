---
date:: 15 04 2023
topic:: 
type:: network 
---
## Traceroute 
A command to finde [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) adreses tah the device is connacting to before reaching the destination 
>[!example]
>## In this case the road to google.com took 18 *hops*
>traceroute google.com
traceroute to google.com (172.217.1.78), 30 hops max, 60 bytes packets
1
192.168.1.1 (192.168.1.1)
4.152 ms 3.834 ms 32.964 ms
2
10.0.0.1 (10.0.0.1) 5.797 ms 6.995 ms 7.679 ms
3
96.120.96.45 (96.120.96.45) 27.952 ms 30.377 ms 32.964 ms
--snip--
18 lgal15s44-in-f14.le100.net (172.217.1.78) 94.666 ms 42.990 ms 41.564 ms
 
>[!quote] [IPv4 address](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/IPv4 address.md)