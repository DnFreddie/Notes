+++
title = 'Nagles Algorithm'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Nagle's Algorithm ([TCP](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Ref_OSI/TCP.md))

- **Purpose:** Reduces the number of small packets on the network by combining small messages.
- **Problem:** Sending many tiny packets can inefficiently use bandwidth.
  
**Mechanism:**
1. **Buffer:** If unacknowledged data is in flight, new small messages are buffered.
2. **Transmit when:**
   - Previous data is acknowledged.
   - Buffer fills up to maximum segment size.
   - A timer expires (typically 200 ms).
  
**To Disable:** Use `TCP_NODELAY` socket option. Useful for applications where low latency is more critical than efficient bandwidth use.



>[!quote] [HTTP](/protocols/HTTP.md) [ports](/ports/ports.md) [bandwidth](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/bandwidth.md)