---
categories:
- redhat
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- selinux
- RHEL
title: SELinux
---

# Security enhanced Linux

Define on every file what are they allowed to access ## Contianers  
\[Selinux Containers\]({{\< ref
“posts/redhat/selinux_containers.md”\>}})

## Policies

\[Selinux Policies\]({{\< ref “posts/redhat/selinux_policies.md”\>}})

## Modes

``` bash
sestatus
```

-   **Enforcing** checking the attribute of the files does’t let them
    access it
-   **Permissive** Only *logs* the check
-   **Disabled**

### Types

-   **Targeted** Targeted processes are protected

-   **Minimum** Only *selected* processes are targeted

-   **Mls** *Multi Level security protection* >\[!example\]- >
    ![Pasted_image_20240507104548.png](/Notes/Pasted_image_20240507104548.png)
    ### Labels >\[!example\] It’s a label on the
    file >![Pasted_image_20240507105206.png](/Notes/Pasted_image_20240507105206.png)

-   **User** User mapped to the Selinux

-   **Role** What a user or daemon can do with the file

-   **Type** What kind of object is it

    -   It’t insert **context** on a new file not if the file is moved

-   **Sensitivity level** *Only in Mls*

-   **To display it**

``` bash
ls -lZ
```

### Changing context

-   **chcon** Changes the *type* for new

``` bash
chcon -t httpd_sys file
```

-   **restorecon**
    -   set’s the proper context for the file

``` bash
restorecon -R *
```

> \[!tip\] To change the conetex for all the files add */.autorelable*

## Logging

[Troubelshootig Selinux
Logs](https://www.redhat.com/sysadmin/selinux-denial2)

Hole SELinux message can usually be spotted via journalctl and searching
for SELinux.

``` bash
# It's the current boot session 
journalctl -b 0
```

Or to use what journalctl uses under the hood, which is
`/var/log/messages`.

> The other way around is if the auditd is enabled.

``` bash
# This will list selinux messages 
ausearch -m avc

# or 
grep "denied"/var/log/audit/audit.log
```

## Updating Policies

\[Selinux Policies\]({{\< ref “posts/redhat/selinux_policies.md”\>}})

Occasionally, programs may attempt to access different user contents
using their policies. However, SELinux may block such attempts, even
when the set option is correct. In such cases, you need to adjust the
SELinux boolean settings.

``` bash
semanage boolead --modyfie --on options
```

------------------------------------------------------------------------

[AppArmor](/Notes/posts/AppArmor)
