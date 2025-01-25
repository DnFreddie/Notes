---
title: 'Boot Process'
date : 2025-01-21T20:15:48+01:00
draft: false
---


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
    * And loading [systemd-udev](/Notes/posts/redhat/systemd-udev) daemon

* `Process initrd.target`(*ececute all units to create minimal env*)
    * mounting *root file system* on  `/sysroot`

* `Switch to rootfs `
    * Runing the default target afterwards

