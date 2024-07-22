+++
title = 'send_queue'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ---
date:: 2023-08-02
type:: Kernel
---
	#alt-name Send Buffer 
## Send queue 

- When the backend application wants to send data **back to the client**, it places the data into the send queue using the **send()** [systemcall](/systemcall.md) 

>[!quote] [recive_queue](/recive_queue.md)