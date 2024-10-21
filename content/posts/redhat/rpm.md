---
date: "2024-08-01T19:23:14+02:00"
draft: false
tags:
- RHEL
title: Rpm package manager
---

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
