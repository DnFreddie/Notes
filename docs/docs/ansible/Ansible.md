---
categories:
- automation
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- ansible
title: Ansible Main
---
# Architecture
**Push model** - Ruby based - ***demon less***
*   **Procedural**
*   it creates top to bottom

# Inventory

-   U can use pass the arguments **direcly to the ivnentory**

``` ini
[test_server]
control_test type: client
node_test type: server
```

-   The beterr approach is to use the `ansible_hostname` *( since it first performs `uname -n`)*


* If u want to execute one host at a time use the `serial` varaible

* To use the **host group** for the playbook use `inventory_hostname`

``` yaml
  hosts: home_machines
  vars:
    user_home: "/home/{{ inventory_hostname }}"
```

### Diffrences
[Docs](https://www.middlewareinventory.com/blog/ansible-inventory_hostname-ansible_hostname-variables/)

![Ansiable hosname vs
inventory_hostname](/static/a_hostname_vs_in_hostname.png)


Example:

``` bash
# to show use ansible-invetory --graph or --list in json output 
[webserver]
servera
servec
[dbservers]
servdb
##Nested groups 
[Nested:children]
webserver
dbservers
```


## Dynamic inventories

*Remember to **define dynamic groups as empty** in the static inventory
file elswere the ansible will error*

-   [Dynamic inventory in
    go](/code_snippets/dynamic_inventory_go)

-   [Using a dynamic libvirt inventory with
    Ansible](https://blog.christophersmart.com/2022/04/03/using-a-dynamic-libvirt-inventory-with-ansible/)

# Ansible MAIN 
---
## [Ansible.cfg](/ansible/ansible.cfg)
---
## [Ansible vault](/ansible/ansible_vault)
---
## [Ansible playbook](/ansible/ansible-playbook)



------------------------------------------------------------------------
# Refrences
[ansible-navigator](/ansible/ansible-navigator)

[Ansible commands](/ansible/ansible_commands)

[teraform](/cloud/terraform/terraform)

[Puppet](/Puppet)

