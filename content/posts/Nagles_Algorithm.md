---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Nagle Algorithm
---

# Nagle’s Algorithm ([TCP](/Notes/posts/Network/Ref_OSI/TCP))

-   **Purpose:** Reduces the number of small packets on the network by
    combining small messages.
-   **Problem:** Sending many tiny packets can inefficiently use
    bandwidth.

**Mechanism:** 1. **Buffer:** If unacknowledged data is in flight, new
small messages are buffered. 2. **Transmit when:** - Previous data is
acknowledged. - Buffer fills up to the maximum segment size. - A timer
expires (typically 200 ms).

**To Disable:** Use the `TCP_NODELAY` socket option. Useful for
applications where low latency is more critical than efficient bandwidth
use.

------------------------------------------------------------------------

[HTTP](/Notes/posts/protocols/HTTP) [Ports](/Notes/posts/ports/ports)
[Bandwidth](/Notes/posts/Network/Phisicall/bandwidth)
