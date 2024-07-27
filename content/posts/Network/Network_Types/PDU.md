+++
title = 'PDU'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    # Protocol Data 
#alt-name **Transmission units**
*were taking a little bit of data and transfering it across the network as a single unit*
## Examples
- <mark style="background: #ABF7F7A6;">[Ethernet]({{< ref "posts/Network/Ref_OSI/Ethernet.md" >}})</mark>
  - Operates on a frame of data 
  * **It doesn't care what's inside!**
* <mark style="background: #ABF7F7A6;">[IP]({{< ref "posts/Network/Ref_OSI/IP.md" >}})</mark>
	* Operates on a packet of data 
	* **Does not care what's inside!**
		* Ip contains [UDP]({{< ref "posts/for_later/UDP.md" >}}) or [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) or diff protocol

--- 
**If the data unit contains a _header_ it will contatain**:
[TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) **segment**
or
[UDP]({{< ref "posts/for_later/UDP.md" >}}) **datagram**

## Encapsilation and Decapsulation of 


[Encapsilation_Decapsulation_visual.png](/Encapsilation_Decapsulation_visual.png)

### Flags
- **Change how th devica interperets the data beeing send insde [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}}) layer**
[Pasted_image_20230319170951.png](/Pasted_image_20230319170951.png)

### We want ot use [MTU]({{< ref "posts/Network/Network_Types/MTU.md" >}}) becouse fragmetation slow things down 
- **Losing  a fragment loses the entire packet**
- **Requiers overheard along the path**

>[!quote] [PAR]({{< ref "posts/for_later/PAR.md" >}})