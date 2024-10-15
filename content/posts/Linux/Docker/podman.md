+++
title = 'podman'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Creating a systemd service

```bash
#/home/pratham/container-chitragupta-db.service
podman generate systemd --new --name chitragupta-db -f
```


### Creating a systemd service with ansible

 >**Systemd unit files for postgres container must exist*!!!*

```yaml
    - name: Create systemd user service
      containers.podman.podman_generate_systemd:
        name: "{{ container_name }}"
        dest: ~/.config/systemd/user/

```

