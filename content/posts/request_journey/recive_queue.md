+++
title = 'recive_queue'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

#alt-name Recieve Buffer 
## Recive queue
As data arrives from the client, it is placed into the receive queue by the operating system or network stack, ready for the backend application to retrieve using the **recv()** [systemcall]({{< ref "posts/systemcall.md" >}}) .


---
[send_queue]({{< ref "posts/send_queue.md" >}})
