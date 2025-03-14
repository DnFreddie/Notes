---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: PDU
---

    # Protocol Data 

#alt-name **Transmission units** *were taking a little bit of data and
transfering it across the network as a single unit* ## Examples -
<mark style="background: #ABF7F7A6;">[Ethernet](/Network/Ref_OSI/Ethernet)</mark>
- Operates on a frame of data \* **It doesn’t care what’s inside!** \*
<mark style="background: #ABF7F7A6;">[IP](/Network/Ref_OSI/IP)</mark>
\* Operates on a packet of data \* **Does not care what’s inside!** \*
Ip contains [UDP](/for_later/UDP) or
[TCP](/Network/Ref_OSI/TCP) or diff protocol

------------------------------------------------------------------------

**If the data unit contains a *header* it will contatain**:
[TCP](/Network/Ref_OSI/TCP) **segment** or
[UDP](/for_later/UDP) **datagram**

## Encapsilation and Decapsulation of

[Encapsilation_Decapsulation_visual.png](/Encapsilation_Decapsulation_visual.png)

### Flags

-   **Change how th devica interperets the data beeing send insde
    [TCP](/Network/Ref_OSI/TCP) layer**
    [Pasted_image_20230319170951.png](/Pasted_image_20230319170951.png)

### We want ot use [MTU](/Network/Network_Types/MTU) becouse fragmetation slow things down

-   **Losing a fragment loses the entire packet**
-   **Requiers overheard along the path**

> \[!quote\] [PAR](/for_later/PAR)
