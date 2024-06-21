---
date:: 21 03 2023
topic:: network-protocol
status:: START
---
## Multiprotocol Label Switching 

- Learning from [[ATM]] and [[Frame Relay]]
- Packets through the [WAN](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Network Types/WAN.md) have a label
	- Routing decision are easy
- **Any transport medium any protocol inside** 
	- [IP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/IP.md) packets, [Ethernet](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/Ethernet.md) frames
## Intial configuration 
Defines were all the sites may be located 
And what lables are used to switchi data 

[MPLSPushingAndPoping.png](/static/MPLSPushingAndPoping.png)
### Pushing and Poping 

- Lables are **pushed** onto packets as they enter the MPLS cloud
- Labels are **popped** off the way out

1. We send data to the clostes **provider edge router**
2. Edge router insert an lable into this data (**pushing**)
3. Then  knows how internals of a provider switch network \
4. When the data reaches the end the lable is beeing removed (**popped off**) 
5. Data is send to the **customer edge router**
$$ $$

---
{{[mGRE](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Data/mGRE.md)}}