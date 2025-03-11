---
date: "2024-08-01T19:23:14+02:00"
draft: false
tags:
- RHEL
title: Rpm package manager
---


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




### Creating a repo 
