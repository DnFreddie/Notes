+++
title = 'request_journey_kernel'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Request 
IT's a stream of bytes thaht has theiri particular 
section define(body,request itself) via ceritain prtococol({{< ref "postsex. [TCP](/Network/Ref_OSI/TCP.md" >}}) ) and then that is parsed to the particular programing language (*u  can define ure own protocol*)
## Request  Journey 
>[!example]-
>![RequestJourny_visual.png](/Notes/RequestJourny_visual.png)

 **Accept**
  - Before we send a request  we need to esatblish a transport that sends that in this case [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) connetion(*SYN/SYNAC*)
 - While listing on a sepcyficc [ports]({{< ref "posts/ports/ports.md" >}}) and interafe [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}})  will create two  [queue_algorithms]({{< ref "posts/Algorithms/queue_algorithms.md" >}}) for a listenr a socket object wich is a file (assosiated with port)
	 - [sync_ queue]({{< ref "posts/sync_ queue.md" >}})
	 - [accept_ queue]({{< ref "posts/accept_ queue.md" >}})
 - The packet goes all the way from  the [NIC_physical]({{< ref "posts/NIC_physical.md" >}}) to the [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}}) memory via procces called [DMA]({{< ref "posts/DMA.md" >}})(*Direct memory access*)
 - The Kernel does the lookap weather it has as socket for this particual port 
 - if it doesnt have it drops the conncection  
	 - It replais wiht the [ICMP_protocol]({{< ref "posts/ICMP_protocol.md" >}}) message (*Destination unreachable*)
 - If it does it  put syn into [sync_ queue]({{< ref "posts/sync_ queue.md" >}}) 
	 - ![PutToTeSyncQue_visual.png](/Notes/PutToTeSyncQue_visual.png)
	- Then the [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}})  repais to the cianet with the *SYNAC* to copmlite the conncection 
	- Onece the server has *SYNAC* it moves the **connection** to the [accept_ queue]({{< ref "posts/accept_ queue.md" >}}) 
		- ![MoveToAcceptQuu_visual.png](/Notes/MoveToAcceptQuu_visual.png)
- Now as the conaction is in the [accept_ queue]({{< ref "posts/accept_ queue.md" >}}) backand have to take care of managing it 
- The [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}})  creates another two queue  
	- [recive_queue]({{< ref "posts/recive_queue.md" >}})
	- [send_queue]({{< ref "posts/send_queue.md" >}}) 


[request_journey_backend]({{< ref "posts/request_journey_backend.md" >}})

### Statick files
**Before the sending the file over the newtowrk u have to read the file** to disk 
Read [systemcall]({{< ref "posts/systemcall.md" >}}) is blocking the request (*synchronus procses*)

- U have to wirte the headers like (*content-lenght*)  
- Thasts were ==Doctype HTML comes in==
	- This operation is *asynchronus*

>[!quote] [web socets]({{< ref "posts/MAIN Network+/web socets.md" >}})