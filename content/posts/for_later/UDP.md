title = 'UDP'
date = 2024-07-22T09:10:24+02:00
draft = false

# alt-name message protocol 
## UDP
- **Connection-less system**
	- In contrast to [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}})
- **Unreliable delivery**
	- No error recovery
	- No reordering of data
	- No flow control 
		- *Sender determines the amount of data transmitted*

- Widely used in gaming because we don't care about the message received; we update the data so many times that it does not matter ([ping command]({{< ref "posts/ping_command.md" >}}))

> [!quote] [OSI Model]({{< ref "posts/MAIN_Network+/OSI_Model.md" >}})

