---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: sysctl
---

*modify kernel parameters at runtime.*

List all varialbes

``` bash
sysctl -a
```

### Enable packet forwording

To enable the packet **sysctl -w net.ipv4.ip_forward: 1** *Used to [MITM
attack](/Notes/posts/for_later/MITM_attack)*

> \[!bug\] Remember that the **sysctl** commands are temporary U can see
> them in a */proc* as a vritual procces

![Kernel modules](/Notes/posts/Linux/Kernel/Kernel_modules)
