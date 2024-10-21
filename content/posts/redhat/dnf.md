---
date: "2024-10-16T19:06:32+02:00"
draft: false
title: dnf
---

## Common flags

-   `-‐security`
-   `‐‐enhancement`
-   `‐‐bugfix`

> *To list updates and their severity levels*

``` bash
 dnf updateinfo list --security
```

[Article](https://fedoramagazine.org/how-to-install-only-security-and-bugfixes-updates-with-dnf/)

### Check for seciurity update

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
