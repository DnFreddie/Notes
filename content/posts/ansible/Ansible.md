---
categories:
- automation
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- ansible
title: Ansible Main
---

**Push model** - Ruby based - ***demon less***

-   **Procedural**
    -   it creates top to bottom

# Architecture

1.  Controller node (*only this requires
    ansible*)<!--- Ansaible is a python program -->
    -   This are the *inventory* and are in the ansible configuration
        file
        -   smaller servers
        -   network devices
        -   kuberntetss
    -   public and private cloud **Can do windows automation on
        windows**

-   It has to hav **python** isntalled on the machines

## Plugins/Modules

To list modules use `ansiable-doc  -l` To get the help of the particular
module use `ansible-doc -s <module>` - *inventory plugins* - organize
managed host to different kinds of inventory - *connection plugins*  
- How does Ansaible controller connect to the host - example ssh plugin
- for windows **winrm** plugin - *become* - what user u would like to
become - sudo - run as - *vars* reference how we make use of variables -
*lookup* different *data sources* - *callback* This just logs - *cache*

## Ansible configuration

1.  ansible.cfg in the current directory
2.  **ANSIBLE_CONFIG** environment var

``` bash
# Provides also current config file in use
ansible --version
```

### Example config

``` nix
poetry2nix.mkPoetryEnv {
    projectDir = ./.;
    overrides: poetry2nix.overrides.withDefaults (final: prev: { foo = null; });
}guration
```

``` ini
[defualts]
inventory = ./myInventoru
remote_user: devovs 
collections_paths = ./collections/
collbacks_enabled: ansible.posix.profile_roles
```

## Inventory

-   U can use pass the arguments **direcly to the ivnentory**

``` ini
[test_server]
control_test type: client
node_test type: server
```

-   The beterr approach is to use the `ansible_hostname`
    -   since it first performs *uname -n*

------------------------------------------------------------------------

If u want to execute one host at a time use the `serial` varaible

------------------------------------------------------------------------

To use the **host group** for the playbook use `inventory_hostname`

``` yaml
  hosts: home_machines
  vars:
    user_home: "/home/{{ inventory_hostname }}"
```

### Diffrences

![Ansiable hosname vs
inventory_hostname](/Notes/a_hostname_vs_in_hostname.png)

[Docs](https://www.middlewareinventory.com/blog/ansible-inventory_hostname-ansible_hostname-variables/)

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

### Dynamic inventories

*Remember to **define dynamic groups as empty** in the static inventory
file elswere the ansible will error*

-   [Dynamic inventory in
    go](/Notes/posts/code_snippets/dynamic_inventory_go)

-   [Using a dynamic libvirt inventory with
    Ansible](https://blog.christophersmart.com/2022/04/03/using-a-dynamic-libvirt-inventory-with-ansible/)

## Playbooks

(rember to check for the sytnax issues `--sytnax check` ) **They are run
top to bottom** \[!bug\] By default ansible *panics when error* -
**Task** is just a **task** that has to be done can use modules -
**Role** is just the **directory** with the instructions - Highly
parametric-seized - *Works with vars* - Can mix both

### Handlers

-   They are executing in an order that there were **notyfied** in
-   The handlesr executes only once no matter the amount of *task
    calling*
    -   If **force_handlers** enabled then handlers will execute no
        matter the error

#### Example

``` yaml
- name: Kernel Update
  hosts: test
  become: true
  force_handlers: true
  tasks:
    - name: Ensure kernel is updated
      # Add task

  handlers:
    - name: Ensure system is rebooted
      ansible.builtin.reboot:
        msg: "Rebooting due to a kernel update"
```

### Facts and conditionals

[Docs](https://www.golinuxcloud.com/ansible-facts/)

#### Gathering info

*Gathering facts may be constly* use **setup** for the specyfic machines
u want to chekout

-   If **gather_facts** enabled we can use uthis to veryfie facts of the
    systme
    -   And set the taks blocks acordingly
-   use **when** for the conditoals
-   or vars with the **assert** module

[Docs](https://www.coursera.org/learn/fundamentals-of-ansible/lecture/u0iXX/using-conditionals)

Ex

``` yaml
gather_facts: true 
task:
    - name: Veryfie that this si the debian dirsto 
      when: "'Debian' is ansiable_fact['distribiution']"
      block:
        - name: This is Debian
        - ansible.builtin.debug:
                - msg: This is Debian 
          
```

#### User defined facts

Create `/etc/ansible/facts.d` on the *managed nodes* - The file has tave
to have **.fact** extentsion - Has to be in the **Json Format or .ini**
Theare stored in `ansible_facts[’ansible_local’]`


### Plugins

Uses ansiable-**galaxy** They provied modules like for example to work
with
[Libvirt](https://docs.ansible.com/ansible/latest/collections/community/libvirt/index.html)

#### Ansiable with nix

Rember to install stuff in the as root user profile then the user can
use the softerwe and also add the nix path to **sudo path**

``` bash
Defaults   secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/nix/var/nix/profiles/default/bin"
```

### Pacages/Collections

U can use a bulti in **.package** module to install different packages

[Example](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html#examples)


### Ansible Vault
[Ansible vault](/Notes/posts/ansible/ansible_vault)





### Ansible Baisc modules and there usage

| Name    | Use                                                        |
|---------|------------------------------------------------------------|
| command | Runs arbitrary commands but not using a shell              |
| shell   | Runs arbitrary commands using a shell                      |
| raw     | Runs commands directly on top of SSH without using Python  |
| copy    | Copies files or lines of text to files                     |
| yum     | Manages packages on RHEL family-managed hosts              |
| service | Manages the current state of systemd and system-V services |
| ping    | Checks whether managed hosts are in a manageable state     |



> `raw ` is used to do it over ssh withou the pytoh  so can be used for installing things for ansible
```bash
ansible -u root -i inventory ansible3 --ask-pass -m raw -a “yuminstall python3"

```

------------------------------------------------------------------------

[teraform](/Notes/posts/cloud/terraform/terraform)

[Puppet](/Notes/posts/Puppet)

[Ansible commands](/Notes/posts/ansible/ansible_commands)

