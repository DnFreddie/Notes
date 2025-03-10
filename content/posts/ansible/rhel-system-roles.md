---
title: 'Rhel-System-Roles'
date : 2025-03-08T21:25:39+01:00
draft: false
---

This are the roles provided by the REDHAT for RHEL systems
* The RHEL system roles will be installed in the `/usr/share/ansible/roles` 

```bash 
ansible-galaxy install -r req.yml -p ~/.ansible/roles
cat req.yml
# Output: 
# - src: linux-system-roles.network
# - src: linux-system-roles.timesync
# - src: linux-system-roles.selinux
# - src: linux-system-roles.firewall
# - src: linux-system-roles.storage
# - src: linux-system-roles.kdump
```
## Selinux role
Therse a `selinux_reboot_required` if it's set to ture by defualt 
* This will reboot the machine and waits for it unless the machine is up again 
> Example playbook
```yml
- name: execute the role and catch errors
block:
- include_role:
name: rhel-system-roles.selinux rescue:
# Fail if failed for a different reason
than selinux_reboot_required.
- name: handle errors
```
##  Time sync role 

 * `timesync_ntp_servers` variable. This variable
specifies attributes to indicate which time servers should
be used.
 *  `hostname` attribute identifies the name of
IP address of the time server. 
 * `iburst` option is used to enable or disable fast initial time synchronization using the `timesync_ntp_servers` variable
