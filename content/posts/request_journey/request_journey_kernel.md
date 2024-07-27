+++
title = 'request_journey_kernel'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Request
It's a stream of bytes that has its particular sections defined (body, request itself) via a certain protocol [Tcp]({{< ref "/posts/Network/Ref_OSI/TCP.md" >}}) and then parsed into the particular programming language. (*You can define your own protocol.*)

## Request Journey
>[!example]-
>![RequestJourney_visual.png](/Notes/RequestJourney_visual.png)

**Accept**
- Before we send a request, we need to establish a transport mechanism, which in this case is a [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) connection (*SYN/SYN-ACK*).
- While listening on a specific [port]({{< ref "posts/ports/ports.md" >}}), the [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}}) will create two [queue algorithms]({{< ref "posts/Algorithms/queue_algorithms.md" >}}) for a listener: a socket object, which is a file associated with the port.
  - [Sync queue]({{< ref "posts/sync__queue.md" >}})
  - [Accept queue]({{< ref "posts/request_journey/accept_queue.md" >}})
- The packet travels from the [NIC physical]({{< ref "posts/NIC_physical.md" >}}) to the [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}}) memory via a process called [DMA]({{< ref "posts/DMA.md" >}}) (Direct Memory Access).
- The Kernel checks whether it has a socket for this particular port.
  - If it doesn’t, it drops the connection and replies with an [ICMP]({{< ref "posts/ICMP_protocol.md" >}}) message (*Destination Unreachable*).
  - If it does, it puts the SYN into the [sync queue]({{< ref "posts/sync__queue.md" >}}).
    - ![PutToSyncQueue_visual.png](/Notes/PutToSyncQueue_visual.png)
  - Then the [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}}) replies to the client with a *SYN-ACK* to complete the connection.
  - Once the server receives the *SYN-ACK*, it moves the **connection** to the [accept queue]({{< ref "posts/request_journey/accept_queue.md" >}}).
    - ![MoveToAcceptQueue_visual.png](/Notes/MoveToAcceptQueue_visual.png)
- Now that the connection is in the [accept queue]({{< ref "posts/request_journey/accept_queue.md" >}}), the backend has to manage it.
- The [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}}) creates two additional queues:
  - [Receive queue]({{< ref "posts/request_journey/recive_queue.md" >}})
  - [Send queue]({{< ref "posts/send_queue.md" >}})

[request_journey_backend]({{< ref "posts/request_journey/request_journey_backend.md" >}})

### Static Files
**Before sending the file over the network, you have to read the file to disk.** 
The [system call]({{< ref "posts/systemcall.md" >}}) is blocking the request (*synchronous process*).

- You have to write the headers, such as (*Content-Length*).
- This is where **Doctype HTML comes in**.
  - This operation is *asynchronous*.

---
[web sockets]({{< ref "posts/MAIN_Network+/web_socets.md" >}})

