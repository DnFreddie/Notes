## The ethernet protocol
**The [MTU](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Network Types/MTU.md) of ip is 1500 bytes!**
## IP Flags
*they deal with the fragmentation of data*

## IP fragmentation
**Fragments are always in multiples of 8**
becouse of the number of fragmentation
offsets bits in the <mark style="background: #FFB86CA6;">IP header</mark>

## Holding data 
The data is beeing hold im the [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) [[UDP]] 

## Transfering data 
==The data ins *Encapsulated* by the IP protocol==
- [Ethernet](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/Ethernet.md)  **frame**
	![TransferEthernetFrame_visual.png](/static/TransferEthernetFrame_visual.png)