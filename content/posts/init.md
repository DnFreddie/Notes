---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: init
---

>Example reboot a system withou the systemd 
```bash
exec /sbin/init 6 
```
[Chnaging root Password](/Notes/posts/redhat/boot_process#changing--the-root-password)

> Reboot the system with systemd 

```bash 
exec /usr/lib/systemd/system
```


- First process on the machine(*PID 1*)

> \[!tip\] The kernel starts init directly Init starts everything else
> The mommy of the systems - It take care of orphan process by
> *reasinging the parent* - It get rids of the zombie procces - [Run
> Levels](/Notes/posts/for_later/Run_Levels)(*old*)
