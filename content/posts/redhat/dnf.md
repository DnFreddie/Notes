---
date: "2024-10-16T19:06:32+02:00"
draft: false
title: dnf
---




## Common flags

*   `--best`
*   `-‐security`
*   `‐‐enhancement`
*   `‐‐bugfix`

> *To list updates and their severity levels*


## Install the new version of kernel 
```bash 
dnf install kernel --best 

```

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

### Menaging repos


The repos are stored  in `/etc/yum.repos.d`
> Add the repo
```bash
dnf config-manager --add-repo=http://reposerver.example.com/
```

* By defualt it uses the HTTP prtoocol but u can specyfie the diffrent one
    * `protocol://,` such as `http://,` `ftp://,` or `file://.` 
> **Don't forget!!**
> If you’re using the dnf config-manager tool to add repositories, you need to edit
> the repository file in /etc/yum.conf.d after adding it, so that it includes the line
> gpgcheck=0.
* The gpg keys are located in e `/etc/pki/rpm-gpg`
* Structure of `.repo` file
    * `[label]`  The .repo file can contain different repositories, each section starting
    with a label that identifies the specific repository.
    * `name=` Use this to specify the name of the repository you want to use
    * baseurl= This option contains the URL that points to the specific repository
    location.
    * `gpgcheck=` Use this option to specify if a GNU Privacy Guard (GPG) key
    validity check should be used to verify that packages have not been tampered with.


*  If the packagekit deamon is enabled
List the removed packages
journalctl -u packagekit | grep -i removed-package

### Creating your own repo


