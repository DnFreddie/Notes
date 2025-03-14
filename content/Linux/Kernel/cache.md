---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Casche
---

Small and fast temporarly storage area located near
[Cpu](/Linux/Kernel/Cpu) for efficient and near-instant data
retrival

-   It carries the freqently used data
    -   It uses **S-ram**
-   There are **3 casche levels**(*closesness and acessability*)
-   L1 (priamary casche)
    -   fast
    -   small
    -   emebeded in [Cpu](/Linux/Kernel/Cpu)
-   L2
    1.  holds more then **L1**
    2.  can be emebeded or run on a seperate chip
-   L3 Specialiazed memory design to *improve* the performance of **L1**
    and **L2** casches

------------------------------------------------------------------------

[Redis](/databases/redis) [Etag](/Etag)
