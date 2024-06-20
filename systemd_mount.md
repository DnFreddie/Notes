

Systemd mount units are used to control the mounting and unmounting of filesystems. 

#etc 
They are similar to traditional ***/etc/fstab*** entries but are managed by systemd. Mount units are defined in configuration files typically located in `/etc/systemd/system` or `/run/systemd/system`. 

These files have a **.mount extension**.

`A unit configuration file whose name ends in ".mount" encodes information about a file system mount point controlled and supervised by systemd.`

- **What** specifies the device or filesystem to be mounted.
- **Where** specifies the mount point.
- **Type** specifies the filesystem type.
- **Options** specify mount options.


>[!example]
```ini
[Unit]
Description=My Example Mount

[Mount]
What=/dev/sdb1
Where=/mnt/mydrive
Type=ext4
Options=defaults

[Install]
WantedBy=multi-user.target
```

---
[systemd](/systemd.md) 
[[systemd#Systemd Timers|Timers]]
