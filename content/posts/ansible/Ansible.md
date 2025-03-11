---
categories:
- automation
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- ansible
title: Ansible Main
---
* [Architecture](#architecture)
  * [Plugin/Modules](#pluginmodules)
  * [Ansible configuration](#ansible-configuration)
    * [Example config](#example-config)
  * [Inventory](#inventory)
    * [Diffrences](#diffrences)
    * [Dynamic inventories](#dynamic-inventories)
  * [Playbooks](#playbooks)
    * [Handlers](#handlers)
    * [Facts and conditionals](#facts-and-conditionals)
      * [Gathering info](#gathering-info)
      * [User defined facts](#user-defined-facts)
    * [Plugins](#plugins)
      * [Ansiable with nix](#ansiable-with-nix)
    * [Packages/Collections](#packagescollections)
    * [Ansible Vault](#ansible-vault)
    * [Ansible Baisc modules and there usage](#ansible-baisc-modules-and-there-usage)
  * [Check Mode](#check-mode)
    * [Diff mode --diff](#diff-mode---diff)
  * [Error Message Readability](#error-message-readability)
* [Mange task tags and list task](#mange-task-tags-and-list-task)
  * [List the task](#list-the-task)
  * [Useful modules](#useful-modules)
    * [Tags](#tags)
  * [Managing Software  and repos](#managing-software-and-repos)
    * [Downloading the local repo](#downloading-the-local-repo)
    * [Managing subscriptions](#managing-subscriptions)
---

# Architecture
**Push model** - Ruby based - ***demon less***
-   **Procedural**
    -   it creates top to bottom

1.  Controller node (*only this requires
    ansible*)<!--- Ansaible is a python program -->
    -   This are the *inventory* and are in the ansible configuration
        file
        -   smaller servers
        -   network devices
        -   kuberntetss
    -   public and private cloud **Can do windows automation on
        windows**

-   It has to have **python** installed on the machines

## Plugin/Modules

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
inventory_hostname](/static/a_hostname_vs_in_hostname.png)

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
    go](/code_snippets/dynamic_inventory_go)

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

> Example
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

### Packages/Collections

U can use a bulti in **.package** module to install different packages

[Example](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html#examples)


### Ansible Vault
[Ansible vault](/ansible/ansible_vault)

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

## Check Mode
> Some modules don't support the check mode
`check_mode: yes` yes can be used with any task it also overwrites the entire playbook

### Diff mode --diff
>  Display changes in file contents
```bash
ansible-playbook playbook.yml --diff

#  Output:
# --- before: /etc/myconfig.conf
# +++ after: /etc/myconfig.conf
# @@ -1,3 +1,3 @@
#  setting1 = true
# -setting2 = old_value
# +setting2 = new_value
#  setting3 = enabled
```

## Error Message Readability
> Improve error message readability
```bash
# file: ansible.cfg
# stdout_callback = debug
# or
# stdout_callback = error
```
# Mange task tags and list task
## List the task
```bash
ansible     --list-task <playbook>
ansible     --list-task <playbook>
```
## Useful modules
* Uri
    * To perform quick checks and so on
* Stat
    * stat the files and dirs
* Assert
```yml
- name: check if file size is valid
  assert:
    that:
    - "{{ (filesize | int) <= 100 }}"
    - "{{ (filesize | int) >= 1 }}"
    fail_msg: "file size must be between 0 and
    100"
    success_msg: "file size is good, let\’s
    continue"

- name: create a file
  command: dd if=/dev/zero of=/bigfile bs=1
  count={{ filesize }}

```
### Tags
* U can list tags with just --list-tags
* If u set the tag to `never` it want run unless specified (useful for debugging)
## Managing Software  and repos
U can provide a list to the package argument instead of looping over the packages

### Downloading the local repo
Ansible doesn't provide the module for creating the repos u have to do it manually

Also there's a `rmp_key` module for downloading  the gpg keys
> Example downloading and creating a local repo
```yml
- name: make directory
file:
path: /var/ftp/repo
state: directory
- name: download packages
yum:
name: nmap
download_only: yes
download_dir: /var/ftp/repo
- name: createrepo
command: createrepo /var/ftp/repo
```
### Managing subscriptions
There are two models that deal with the subscription management
* `red hat_subscription` Subscription and Registration in one task
* `rhsm_repository` add subscription manager repos
> Example Using subscription manager to set up Ansible
```yml
---
- name: register and subscribe ansible5
redhat_subscription:
username: bob@example.com
password: verysecretpassword
state: present
- name: configure additional repo access
  rhsm_repository:
- name:
  - rh-gluster-3-client-for-rhel-8-x86_64-
  rpms
    - rhel-8-for-x86_64-appstream-debug-rpms
```



------------------------------------------------------------------------

[teraform](/cloud/terraform/terraform)

[Puppet](/Puppet)

[Ansible commands](/ansible/ansible_commands)

[ansible-navigator](/ansible/ansible-navigator)
