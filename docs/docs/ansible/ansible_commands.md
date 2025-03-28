---
categories:
- automation
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- ansible
title: Ansible Commands
---

[Docs](https://www.digitalocean.com/community/cheatsheets/how-to-manage-multiple-servers-with-ansible-ad-hoc-commands)

# Test Host connection

``` bash
ansible all -i inventory -m ping
```

## Defining Targets

*You can also specify multiple hosts and groups by separating them with
colons:*

``` bash
ansible server1:server2:dbservers -i inventory -m ping
```

## Runing modules

-   Probably u will need to use the **setup module**
    -   [Docs](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/setup_module.html#examples)
-   To execute a module with arguments, include the **-a** flag followed
    by the appropriate options in double quotes
    -   U can use whatever the cmd with **-a**

ansible -i hosts servers -m setup -a ‘filter: ansible_distribution’
ansible servers -i hosts -m file -a ‘state: directory
path=/opt/deployment’

``` bash
ansible <target group> -i inventory -m module -a "module options"
```

##### Setup module

-   pages of information about the server that can be used as variable
    in the playbooks later

##### Run as root

``` bash
ansible server1 -i inventory -a "tail /var/log/nginx/error.log" --become
```

------------------------------------------------------------------------

[Ansible Main](/ansible/ansible_commands)

### Ansible Debuging

*U can skip the deubiging message by using etiher the:* - **Verbosity
Level** in ur playbook - Just use `-vvv` flag

## Ansible Roles

Init a role

``` bash
# role creation
ansible-galaxy init <role_name>
```
