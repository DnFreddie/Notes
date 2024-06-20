---
date:: 2023-08-02
type:: Kernel
---
	#alt-name Send Buffer 
## Send queue 

- When the backend application wants to send data **back to the client**, it places the data into the send queue using the **send()** [systemcall](/systemcall.md) 

>[!quote] [recive_queue](/recive_queue.md)