---
title: 'Quadlet'
date : 2025-02-21T10:40:54+01:00
draft: false
---

* U can use systemd service as a contianers 
    * Thery are stored `~/.config/containers/systemd/` as `.conatainer` files
        * When u add them add them as  a service not as a container file 
    
> Check weather the systemd sees the `.container` files
```bash 
/usr/lib/systemd/system-generators/podman-system-generator --user --dryrun

# Output
# quadlet-generator[57009]: Loading source unit file /home/aura/.config/containers/systemd/mycontainer.container
# ---mycontainer.service---
```

[Syntax Docs](https://github.com/containers/quadlet/blob/main/docs/Fileformat.md)
*  Also works with the [Kubernetes](/Notes/posts/CKA/Kubernetes) yaml
> Create  app.kube  file
```ini
[Kube]
yaml=fedora.yml

```
> **REMBER to check does the user linger with**  `loginctl`
```bash
loginctl show-user aura
# Output:
# UID=1000
# GID=1000
# Name=aura
# Timestamp=Thu 2025-02-20 18:51:31 CET
# TimestampMonotonic=23674016
# RuntimePath=/run/user/1000
# Service=user@1000.service
# Slice=user-1000.slice
# Display=2
# State=active
# Sessions=3 2
# IdleHint=no
# IdleSinceHint=0
# IdleSinceHintMonotonic=0
# Linger=no
loginctl enable-linger
```
--- 
[podman](/Notes/posts/podman)

