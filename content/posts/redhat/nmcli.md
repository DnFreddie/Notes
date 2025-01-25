---
title: 'Nmcli'
date : 2025-01-17T22:31:09+01:00
draft: false
---
 > Verfie the current permiton on the network use 
```bash
nmcli general perrmison
# Output: 
# PERMISSION                                                        VALUE
# org.freedesktop.NetworkManager.checkpoint-rollback                auth
# org.freedesktop.NetworkManager.enable-disable-connectivity-check  yes
# org.freedesktop.NetworkManager.enable-disable-network             yes
# org.freedesktop.NetworkManager.enable-disable-statistics          yes
# org.freedesktop.NetworkManager.enable-disable-wifi                yes
# org.freedesktop.NetworkManager.enable-disable-wimax               yes
# org.freedesktop.NetworkManager.enable-disable-wwan                yes
# org.freedesktop.NetworkManager.network-control                    yes
# org.freedesktop.NetworkManager.reload                             auth
# org.freedesktop.NetworkManager.settings.modify.global-dns         auth
# org.freedesktop.NetworkManager.settings.modify.hostname           auth
# org.freedesktop.NetworkManager.settings.modify.own                yes
# org.freedesktop.NetworkManager.settings.modify.system             yes
# org.freedesktop.NetworkManager.sleep-wake                         no
# org.freedesktop.NetworkManager.wifi.scan                          yes
# org.freedesktop.NetworkManager.wifi.share.open                    yes
# org.freedesktop.NetworkManager.wifi.share.protected               yes
```

##  Netowrking  scripts

* There are located in  `/etc/NetworkManager/system-connections/`
* On the legacy system there were stored in `/etc/sysconfig/network-scripts`

