+++
title = 'Rpm package menager'
date = 2024-08-01T19:23:14+02:00
draft = false
tags = ["redhat"]
+++



### When the pacage was insatlled `--last`
```bash
rpm -qa  --last
```

## General info `-qi`
```bash
rpm -qi openssl
```


### Pacage Dependecies `-R`
```bash
rpm -qR openssl
```

### Reading a package changelog `--changelog`

```bash
rpm -q --changelog  openssl
```

### Files provided by the pacage `-l`
```bash
rpm -ql openssl
```
