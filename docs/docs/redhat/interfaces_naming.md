---
title: 'Interfaces Naming'
date : 2025-01-17T22:07:25+01:00
draft: false
---

* Network names types
 * `en`  Ethernet interfaces begin with , 
 * `wl` WLAN
 * `wa ` WAN
* Adapter naming
    * `o` onboard(*build into the motherboard*)
    * `s` hotplug slot 
    * `p` [PCI device](/Getting_PCI_dev_info) 
    * `x` used to create the devie name based on the **MAC** adress

* Then follows a number, which is used to represent an index, ID, or port.

* Exeptions
Apart from this default device naming, network cards can be named based on the
BIOS device name as well.
In this naming scheme, names such as `em1` **(embedded network card 1)** or `p4p1` **(which is PCI slot 4, port 1)** can be used.
