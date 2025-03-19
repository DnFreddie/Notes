---
date: "2024-10-16T19:06:32+02:00"
draft: false
title: pkg managment
---


# dnf 
## Common Update Flags 
*   `--best`
*   `-‐security`
*   `‐‐enhancement`
*   `‐‐bugfix`

> *To list updates and their severity levels*

[Article](https://fedoramagazine.org/how-to-install-only-security-and-bugfixes-updates-with-dnf/)

## Check for seciurity update

``` bash
 dnf check-update --security
```

#### Install only seciure updates and bugfixes

``` bash
 dnf update --security --bugfix
```

##### Install only the specyifc set

``` bash
dnf update --advisory: FEDORA-2021-74ebf2f06f
```
##  Kernel Updates

```bash 
# Check for the new kernel
# This will also list kernels that are already on the system
# The kernels are located in /boot/vmlinuz*
# Always check if they are symlinks or not!!!  
dnf list kernel 
# Output: 
# Installed packages
# kernel.x86_64 6.11.10-300.fc41 updates
# kernel.x86_64 6.12.9-200.fc41  updates
# kernel.x86_64 6.12.15-200.fc41 updates
# 
# Available packages
# kernel.x86_64 6.13.6-200.fc41  updates

# Install the new version of kernel 
dnf install kernel --best 

```
``` bash
 dnf updateinfo list --security
```

## Menaging repos


The repos are stored  in `/etc/yum.repos.d`

```bash
# modifying the repoo
# Old way 
dnf config-manger --enable <repo_id>
dnf config-manger --disable <repo_id>
# New way 
dnf config-manager setopt repo-id.enabled=0
dnf config-manager setopt repo-id.name=new-repo-name
```

[Outdated Redhat way](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/managing_software_with_the_dnf_tool/assembly_managing-custom-software-repositories_managing-software-with-the-dnf-tool#proc_setting-yum-repository-options_assembly_managing-custom-software-repositories)
```bash
# Add the repo
# Outdated
dnf config-manager --add-repo=http://reposerver.example.com/
```

* By defualt it uses the HTTP prtoocol but u can specyfie the diffrent one
    * `protocol://,` such as `http://,` `ftp://,` or `file://.` 

*  If the packagekit deamon is enabled
List the removed packages
journalctl -u packagekit | grep -i removed-package


# rpm 

> `Important to not install packages using rpm direcly use`
 `rpm -Uvh`  wont update the [dnf](/redhat/dnf) package database

[Rocky Linux
Repositories](https://wiki.rockylinux.org/rocky/repo/#community-approved-repositories)

### When the pacage was insatlled `--last`

``` bash
rpm -qa  --last
```

## General info `-qi`

``` bash
rpm -qi openssl
```

### Pacage Dependecies `-R`

``` bash
rpm -qR openssl
```

### Reading a package changelog `--changelog`

``` bash
rpm -q --changelog  openssl
```

### Files provided by the pacage `-l`

``` bash
rpm -ql openssl
```

### Get the configuration files that the package uses

```bash
rmp -qc nmap 
```

### Get the installation scripts 
* `-p` to see package  before the installation   
```bash
rmp -q --scritps
```
### List the avaialble documentaitions

```bash
rpm -qd dnsmas
```



## Check installed kernels
```bash 
# The kernels are located in /boot/vmlinuz*
# Always check if they are symlinks or not!!!  
rpm -qa kernel
# Output: 
# kernel-6.11.10-300.fc41.x86_64
# kernel-6.12.9-200.fc41.x86_64
# kernel-6.12.15-200.fc41.x86_64

```



