---
title: 'Boot Process'
date : 2025-01-21T20:15:48+01:00
draft: false
---

[UEFI vs BIOS](/UEFI_vs_BIOS)

![Pasted_image_20240424191852.png](/static/Pasted_image_20240424191852.png)

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

[Grub 2](/GRUB_2)

### Steps 

* `POST`(*power on self*)
    * Turning On for the system firemwer 

* `Selecting Bootable device`
    *  Either From UEFI or for the bios 

* `Loding the boot loader` (*Grub or Grub2*)

* Loading the Kernel

* Loading  `initramfs` 
    * On Rehl it also contains the **complate OS**
* `Starting /sbin/init`
    * And loading [systemd-udev](/redhat/systemd-udev) daemon

* `Process initrd.target`(*ececute all units to create minimal env*)
    * mounting *root file system* on  `/sysroot`

* `Switch to rootfs `
    * Runing the default target afterwards


### Changing  the root password 

1. Enter the rescue mode 
2. Add this line before `intird `
```bash 
init=/bin/bash 
```
3. Then boot 
4. Mount the system in rw perrmison  to be able to applay changes 
```bash
mount -o remount,rw /
# And then back to readonly 
mount -o remount,ro /

```
Rembert to `.autorelabel` for [SELinux](/SELinux)
5. reboot the system 

```bash 
exec /sbin/init 6
# or 
exec /usr/lib/systemd/systemd
```
---
[restet root pass](/redhat/troubleshotting/restet_root_pass)
[init](/init)
