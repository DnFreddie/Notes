---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: request_journey_kernel
---

## Request

It’s a stream of bytes that has its particular sections defined (body,
request itself) via a certain protocol
[Tcp](/Notes/posts//posts/Network/Ref_OSI/TCP) and then parsed into the
particular programming language. (*You can define your own protocol.*)

## Request Journey

> \[!example\]-
> ![RequestJourney_visual.png](/Notes/RequestJourney_visual.png)

**Accept** - Before we send a request, we need to establish a transport
mechanism, which in this case is a
[TCP](/Notes/posts/Network/Ref_OSI/TCP) connection (*SYN/SYN-ACK*). -
While listening on a specific [port](/Notes/posts/ports/ports), the
[Kernel](/Notes/posts/Linux/Kernel/Kernel) will create two [queue
algorithms](/Notes/posts/Algorithms/queue_algorithms) for a listener: a
socket object, which is a file associated with the port. - [Sync
queue](/Notes/posts/sync__queue) - [Accept
queue](/Notes/posts/request_journey/accept_queue) - The packet travels
from the [NIC physical](/Notes/posts/NIC_physical) to the
[Kernel](/Notes/posts/Linux/Kernel/Kernel) memory via a process called
[DMA](/Notes/posts/DMA) (Direct Memory Access). - The Kernel checks
whether it has a socket for this particular port. - If it doesn’t, it
drops the connection and replies with an
[ICMP](/Notes/posts/ICMP_protocol) message (*Destination Unreachable*).
- If it does, it puts the SYN into the [sync
queue](/Notes/posts/sync__queue). -
![PutToSyncQueue_visual.png](/Notes/PutToSyncQueue_visual.png) - Then
the [Kernel](/Notes/posts/Linux/Kernel/Kernel) replies to the client
with a *SYN-ACK* to complete the connection. - Once the server receives
the *SYN-ACK*, it moves the **connection** to the [accept
queue](/Notes/posts/request_journey/accept_queue). -
![MoveToAcceptQueue_visual.png](/Notes/MoveToAcceptQueue_visual.png) -
Now that the connection is in the [accept
queue](/Notes/posts/request_journey/accept_queue), the backend has to
manage it. - The [Kernel](/Notes/posts/Linux/Kernel/Kernel) creates two
additional queues: - [Receive
queue](/Notes/posts/request_journey/recive_queue) - [Send
queue](/Notes/posts/send_queue)

[request_journey_backend](/Notes/posts/request_journey/request_journey_backend)

### Static Files

**Before sending the file over the network, you have to read the file to
disk.** The [system call](/Notes/posts/systemcall) is blocking the
request (*synchronous process*).

-   You have to write the headers, such as (*Content-Length*).
-   This is where **Doctype HTML comes in**.
    -   This operation is *asynchronous*.

------------------------------------------------------------------------

[web sockets](/Notes/posts/MAIN_Network+/web_socets)
