---
title: "ansible-playbook"
date: 2025-03-12T12:23:16+01:00
draft: false
tags:
  - ansible
---
# Facts and conditionals

[Docs](https://www.golinuxcloud.com/ansible-facts/)

## Gathering info

*Gathering facts may be costly – use setup for specific machines you want to check.*
* If gather_facts is enabled, we can use it to verify system facts
  * And set the task blocks accordingly
* Use when for conditionals
* Or variables with the **assert** module

[Docs](https://www.coursera.org/learn/fundamentals-of-ansible/lecture/u0iXX/using-conditionals)


``` yaml
# Example Gathering info
gather_facts: true 
task:
    - name: Veryfie that this si the debian dirsto 
      when: "'Debian' is ansiable_fact['distribiution']"
      block:
        - name: This is Debian
        - ansible.builtin.debug:
                - msg: This is Debian 
          
```

## User defined facts

* Create `/etc/ansible/facts.d` on the *managed nodes* 
    * The file has tave
    to have **.fact** extentsion - Has to be in the **Json Format or .ini**
    * Theare stored in `ansible_facts[’ansible_local’]`

---

---
# Managing Software  and repos
*U can provide a list to the package argument instead of looping over the packages*

## Downloading the local repo
Ansible doesn't provide the module for creating the repos u have to do it manually

Also there's a `rmp_key` module for downloading  the gpg keys
```yaml
# Example downloading and creating a local repo
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
## Managing subscriptions
*There are two models that deal with the subscription management*

* `red hat_subscription` Subscription and Registration in one task
* `rhsm_repository` add subscription manager repos

> Example Using subscription manager to set up Ansible
```yaml
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
---
# Commands 

[Docs](https://www.digitalocean.com/community/cheatsheets/how-to-manage-multiple-servers-with-ansible-ad-hoc-commands)
## Defining Targets

*You can also specify multiple hosts and groups by separating them with
colons:*

``` bash
# Exmaple  Test Host connection
ansible server1:server2:dbservers -i inventory -m ping
ansible all -i inventory -m ping
```
## Runing modules

* Probably u will need to use the **setup module**
    * [Docs](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/setup_module.html#examples)
*  To execute a module with arguments, include the **-a** flag followed
    by the appropriate options in double quotes
    *   U can use whatever the cmd with **-a**

``` bash
ansible -i hosts servers -m setup -a 'filter: ansible_distribution'

ansible servers -i hosts -m file -a 'state: directory'

ansible <target group> -i inventory -m module -a "module options"
```

### Setup module

* pages of information about the server that can be used as variable in the playbooks later


------------------------------------------------------------------------

## Ansible Debuging

*U can skip the deubiging message by using etiher the:* 
*  **Verbosity Level** in ur playbook  Just use `-vvv` flag
```bash
# Example running playbok withthe different verbosity  up to 6
ansible-playbook all playboo.yml -vvv
```

* U can also prettyfie the ansible message in  [ansible.cfg](/ansible/ansible.cfg/#error-message-readability)

--- 
## Useful modules
* Uri
    * To perform quick checks and so on
* Stat
    * stat the files and dirs
* Assert
```yaml
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

| Name    | Use                                                        |
|---------|------------------------------------------------------------|
| command | Runs arbitrary commands but not using a shell              |
| shell   | Runs arbitrary commands using a shell                      |
| raw     | Runs commands directly on top of SSH without using Python  |
| copy    | Copies files or lines of text to files                     |
| yum     | Manages packages on RHEL family-managed hosts              |
| service | Manages the current state of systemd and system-V services |
| ping    | Checks whether managed hosts are in a manageable state     |



```bash
# raw  is used to do it over ssh without the python  so can be used for installing things for ansible
ansible -u root -i inventory ansible3 --ask-pass -m raw -a “yuminstall python3"

```

# Execution Modes
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

##  Mange task tags and list task
###  List the task
```bash
ansible     --list-task <playbook>
ansible     --list-task <playbook>
```
### Tags
* U can list tags with just --list-tags
* If u set the tag to `never` it want run unless specified (useful for debugging)

