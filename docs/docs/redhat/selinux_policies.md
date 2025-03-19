---
date: "2024-08-09T22:56:30+02:00"
draft: false
tags:
- selinux
title: Selinux policies
---

*When system starts the policies are loaded into memory*

> **Disclaimer**
>
> Don’t write your own policies for the apps.
>
> **Use Containers!**
>
> If they fail, use a tool like
> [udica](https://github.com/containers/udica) to label them.
>
> If you absolutely have to, then clone context from the existing app,
> like Nginx.

[Guide to write a policy](https://access.redhat.com/articles/6999267)

**List modules**

``` bash
semodule -l 
```

## Semanage

*listing the predefained policies*

``` bash
semange port  -l 
```

### Changing the context

1.  *first tell selinux what should be the defult value*
2.  \*Then change it with restorecon\*\*

### Not standard ports

*Sel has policies for the standard port*

To change the policy to something different

*range can be specyfied via -*

``` bash
semange -a -t  http_port_t -p tcp 444-333
```

> -   `-m`is to modyfie already existing policy
> -   `-d` to delete
> -   `-t` type
> -   `-a` add

U can check for only your customization wiht -`lC`

``` bash
$ semanage port -lC

-------------------------------------------------------
SELinux Port Type              Proto    Port Number

grafana_port_t                 tcp      3000
[root@localhost Notes]# [
```

### Permissive policies

``` bash
semange permissive -l
```

### Booleans

*It’s when u have to enable a option in the policy thats prevented by
default*
[Docks](https://www.redhat.com/sysadmin/change-selinux-settings-boolean)

-   Set the boolen yourself

``` bash
sudo semanage boolean -m -on http_allow_homedirs
```

-   Check boolens set by users

``` bash
semanage boolean -l -C
```

> List of set boolens by user is stored in (*old verisons*)
>
> **/etc/selinux/targeted/modules/activeactive**

> Tip
>
> Install **setroubleshoot-server** to deal with the message

------------------------------------------------------------------------

\[Selinux MAIN\]({{\< ref “posts/SELinux.md”\>}}) \[Selinux
Containers\]({{\< ref “posts/redhat/selinux_containers.md”\>}})
