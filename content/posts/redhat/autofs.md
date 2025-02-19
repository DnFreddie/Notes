---
title: 'Autofs'
date : 2025-02-17T19:49:39+01:00
draft: false
---


* We have the `/etc/auto.master` to configure **mountpoints**
    * if u forget just use `rmp -qc  autofs` 
        * Remember about installing `nfs-utils`


1. Give the location of the mountpoint and the confiugration file associtated with it 
> Example `/etc/auto.master`
```bash 
/mount/net /etc/auto.master.d/netdir.autofs
```
2. Then create netir autofs 
```bash 
fstype=nfs,sync,rw classroom.example.com:/home/guests/netuser1
```




2. If ur'e using systemd mounts remember about `network-online` target


> Mount the user Netuser on `/netuser`
```bash 



```

2. Then 
