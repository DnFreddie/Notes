---
date:: 2023-08-02
type:: Kernel
---
#alt-name Recieve Buffer 
## Recive queue
As data arrives from the client, it is placed into the receive queue by the operating system or network stack, ready for the backend application to retrieve using the **recv()** [systemcall](/systemcall.md) .


>[!quote] [send_queue](/send_queue.md)