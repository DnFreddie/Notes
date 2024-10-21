---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Boot process
---

[UEFI vs BIOS](/Notes/posts/UEFI_vs_BIOS)

![Pasted_image_20240424191852.png](/Notes/Pasted_image_20240424191852.png)

## Hardware sources

-   PXE (*pre-boot execution environment*)
    -   install operating system online
-   iPXE(**uses HTTPS**)

### See the init boot procsse right from grub

``` bash
cat /proc/cmdline
```

``` bash
dmesg | head 
```

------------------------------------------------------------------------

[Grub 2](/Notes/posts/GRUB_2)
