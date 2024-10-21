---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: GRUB 2
---

## Edit config

It’s in the */etc/defualt/*

### To update

-   *update-grub* or *update-grub2*
    -   Or do it manually **grub-mkconfig**

### See the init boot procsse right from grub

``` bash
cat /proc/cmdline
```

``` bash
dmesg | head 
```

------------------------------------------------------------------------

[boot procces](/Notes/posts/boot_process)
