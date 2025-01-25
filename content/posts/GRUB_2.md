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
> To chekc grub paramaters use 
```bash 

 man bootparam

```

### Seting up the arguents 
It’s in the `/etc/defualt/grub`
1. Open the file /etc/default/grub with an editor and remove the rhgb and quiet
options from the GRUB_CMDLINE_LINUX line.
3. From the command line, type grub2-mkconfig -o /boot/grub2/grub.cfg 
4. Reboot and verify that while booting you see boot messages scrolling by.

* The most important line in this file is `GRUB_CMDLINE_LINUX`
which defines how the Linux kernel should be started. In this line, you can apply
permanent fixes to the GRUB 2 configuration.
------------------------------------------------------------------------

[boot procces](/Notes/posts/boot_process)
