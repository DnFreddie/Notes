---
title: 'Umount'
date : 2025-03-05T22:07:15+01:00
draft: false
---
> Find the open files asociated with drive

```bash 
lsof +f -- /dev/sda3
```
> Forcefully Unmounting a Device: 
>
> The '-l' option will perform a lazy unmount, detaching the drive immediately but cleaning up references when the drive is no longer bus
```bash 
sudo umount -l drive_name

