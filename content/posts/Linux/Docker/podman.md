---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: podman
---

## Creating a systemd service 
**!!! Outdated way !!!**

``` bash
#/home/pratham/container-chitragupta-db.service
podman generate systemd --new --name chitragupta-db -f
```
* New way  [quadlet](/Notes/posts/redhat/quadlet)

### Creating a systemd service with ansible

> \*\*Systemd unit files for postgres container must exist*!!!*

``` yaml
    - name: Create systemd user service
      containers.podman.podman_generate_systemd:
        name: "{{ container_name }}"
        dest: ~/.config/systemd/user/
```
