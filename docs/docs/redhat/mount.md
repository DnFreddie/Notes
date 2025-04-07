---
title: "mount"
date: 2025-03-28T20:28:38+01:00
draft: false
---

* `nodev` u can only have files on the system no special devices like **disks**
  or **block devices**
* `nosuid` can't elevate privileges for **processes**

```bash
# Example of secure mounting
sudo mount -o ro,nosuid,nodev,noexec,nofail /dev/sdb1 /mnt/usb_secure
```

