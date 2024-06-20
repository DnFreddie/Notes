# Protocol Data 
#alt-name **Transmission units**
*were taking a little bit of data and transfering it across the network as a single unit*
## Examples
- <mark style="background: #ABF7F7A6;">[Ethernet](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/Ethernet.md)</mark>
  - Operates on a frame of data 
  * **It doesn't care what's inside!**
* <mark style="background: #ABF7F7A6;">[IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md)</mark>
	* Operates on a packet of data 
	* **Does not care what's inside!**
		* Ip contains [[UDP]] or [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) or diff protocol

--- 
**If the data unit contains a _header_ it will contatain**:
[TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) **segment**
or
[UDP](/obisdian_ntoes/for later/UDP.md) **datagram**

## Encapsilation and Decapsulation of 


[Encapsilation_Decapsulation_visual.png](/static/Encapsilation_Decapsulation_visual.png)

### Flags
- **Change how th devica interperets the data beeing send insde [TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md) layer**
[Pasted_image_20230319170951.png](/static/Pasted_image_20230319170951.png)

### We want ot use [MTU](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Network Types/MTU.md) becouse fragmetation slow things down 
- **Losing  a fragment loses the entire packet**
- **Requiers overheard along the path**

>[!quote] [PAR](/obisdian_ntoes/for later/PAR.md)