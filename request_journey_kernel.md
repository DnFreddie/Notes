---
date:: 2023-08-01
type:: network+
---
## Request 
IT's a stream of bytes thaht has theiri particular 
section define(body,request itself) via ceritain prtococol(ex. [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) ) and then that is parsed to the particular programing language (*u  can define ure own protocol*)
## Request  Journey 
>[!example]-
>![RequestJourny_visual.png](/static/RequestJourny_visual.png)

 **Accept**
  - Before we send a request  we need to esatblish a transport that sends that in this case [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) connetion(*SYN/SYNAC*)
 - While listing on a sepcyficc [[ports]] and interafe [[Kernel]]  will create two  [queue_algorithms](/Algorithms/queue_algorithms.md) for a listenr a socket object wich is a file (assosiated with port)
	 - [sync_ queue](/sync_ queue.md)
	 - [accept_ queue](/accept_ queue.md)
 - The packet goes all the way from  the [[NIC_physical]] to the [[Kernel]] memory via procces called [DMA](/DMA.md)(*Direct memory access*)
 - The Kernel does the lookap weather it has as socket for this particual port 
 - if it doesnt have it drops the conncection  
	 - It replais wiht the [ICMP_protocol](/ICMP_protocol.md) message (*Destination unreachable*)
 - If it does it  put syn into [sync_ queue](/sync_ queue.md) 
	 - ![PutToTeSyncQue_visual.png](/static/PutToTeSyncQue_visual.png)
	- Then the [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md)  repais to the cianet with the *SYNAC* to copmlite the conncection 
	- Onece the server has *SYNAC* it moves the **connection** to the [accept_ queue](/accept_ queue.md) 
		- ![MoveToAcceptQuu_visual.png](/static/MoveToAcceptQuu_visual.png)
- Now as the conaction is in the [accept_ queue](/accept_ queue.md) backand have to take care of managing it 
- The [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md)  creates another two queue  
	- [recive_queue](/recive_queue.md)
	- [send_queue](/send_queue.md) 


[request_journey_backend](/request_journey_backend.md)

### Statick files
**Before the sending the file over the newtowrk u have to read the file** to disk 
Read [systemcall](/systemcall.md) is blocking the request (*synchronus procses*)

- U have to wirte the headers like (*content-lenght*)  
- Thasts were ==Doctype HTML comes in==
	- This operation is *asynchronus*

>[!quote] [web socets](/obisdian_ntoes/notes_obsidian/MAIN Network+/web socets.md)