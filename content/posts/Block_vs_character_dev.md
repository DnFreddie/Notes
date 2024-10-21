---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Block vs character devce
---

| **Block**                                                     | Character                         |
|---------------------------------------------------------------|-----------------------------------|
| uses buffers and caches to transfer large amounts of data<br> | a stream of data (*no buffering*) |
| In ls show up as **b**                                        | In ls show up as **c**            |

### Special character devices

-   **/dev/0** constant stream of
    <mark style="background: #FF5582A6;">null characters</mark>(*not
    zeros*)
    -   Used to **zeroing out hard drive**
    -   **devnull** only data goes in (**bit bucket**)

**Geting random characters** - ***/dev/random*** wont return information
unless theres enough **entropy** - ***/dev/urandom*** always returns
random

> \[!tip\] U can get random numbers via $RANDOM

------------------------------------------------------------------------

[PCI dev info](/Notes/posts/Getting_PCI_dev_info)

[Device types](/Notes/posts/Linux/Device_types)
