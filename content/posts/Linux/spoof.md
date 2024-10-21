---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: spoof
---

## Spoofing

*Changing mac adress to appppear as a diffrent device* U just need to
make the hardwere down
[ifconfig](/Notes/posts//posts/Penetration/ifconfig) and cahnge the mac
adrees with hr

example

``` bash
ifconfig eth0 down
ifconfig eth0 hw ether 00:11:22:33:44:55
ifconfig eth0 up
```

------------------------------------------------------------------------

[ifconfig](/Notes/posts//posts/Penetration/ifconfig)
[iwconfig](/Notes/posts/Penetration/iwconfig)
