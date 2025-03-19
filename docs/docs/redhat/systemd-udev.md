---
title: 'Systemd-Udev'
date : 2025-01-21T18:18:01+01:00
draft: false
---
It detects the hardwere and loads approriate drivers or execute a user defined behavior (*ex. auto usb mounts*)


* The rules are stored in ` /usr/lib/udev/rules.d`
  *  The custom rules are defined in `/etc/udev/rules.d.`
* Then the hardwer gets registered to the  `/sys` dir

## Probing the hardwere 
> See how the system probes particular hardwer 
```bash
udevadm monitor
# Output:
# UDEV - the event which udev sends out after rule processing
# KERNEL - the kernel uevent
# KERNEL[132406.831270] add
# /devices/pci0000:00/0000:00:11.0/0000:02:04.0/usb1/1-1 (usb)
# KERNEL[132406.974110] add
# /devices/pci0000:00/0000:00:11.0/0000:02:04.0/usb1/1-1/1-1:1.0 (usb)
# UDEV [132406.988182] add
# /devices/pci0000:00/0000:00:11.0/0000:02:04.0/usb1/1-1 (usb)
# KERNEL[132406.999249] add /module/usb_storage (module)
# UDEV [132407.001203] add /module/usb_storage (module)
```

## Alernative to loading modules
By creating a file  in `/etc/modules-load.d`

* The one that are already loaded are in the `/usr/lib/modules-load.d.`
