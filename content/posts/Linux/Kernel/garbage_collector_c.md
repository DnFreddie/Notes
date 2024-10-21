---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: garbage_collector_c
---

## Region-based memory allocator

-   **U alllcated a big chunk of memeory and every time the more memory
    is requaierd u get subchanks of that **
    -   At the end of the interation (*ex. Training loop*) u swipe all
        the memory
-   In the modern coputers u can allocate *as big memory space as u
    want* since they *do not allcoate memory befor it being
    used* >\[!example\]- >![CAllocatorImplemnetation_visual.png](/Notes/CAllocatorImplemnetation_visual.png)

> \[!quote\] [Areana
> Allocater](https://www.wikiwand.com/en/Region-based_memory_management)
