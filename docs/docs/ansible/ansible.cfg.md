---
title: "ansible.cfg"
date: 2025-03-12T13:46:54+01:00
draft: false
tags:
 - ansible
---
# Ansible configuration

1.  ansible.cfg in the current directory
2.  **ANSIBLE_CONFIG** environment var

``` bash
# Provides also current config file in use
ansible --version
```

>Example ansible.cfg
```ini
[defualts]
inventory = ./myInventoru
remote_user: devovs 
collections_paths = ./collections/
collbacks_enabled: ansible.posix.profile_roles
```

## Error Message Readability
> Improve error message readability
```bash
# file: ansible.cfg
# stdout_callback = debug
# or
# stdout_callback = error
```
