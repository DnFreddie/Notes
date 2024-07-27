+++
title = 'UDP'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

#alt-name message protocol 
## UDP
- <mark style="background: #72083D;">Connection less system </mark>
	- in cotriary to [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}})
- ==Unreliable delievery==
	- No error recovery
	- No reordering of data
	- No FLow Control 
		- *Sener determines the amount of datat transsmited*

- Widely used in gameing and  becouse we dont care about the the message revie we update the data so many times that it does not matter ({{< ref "posts[ping_command](/ping_command.md" >}})) 

>[!quote] [OSI Model]({{< ref "posts/MAIN Network+/OSI Model.md" >}})