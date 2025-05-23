---
date: "2024-08-27T18:03:38+02:00"
draft: false
title: limits.conf
---

[Arch Wiki Docs](https://wiki.archlinux.org/title/Limits.conf)

For systemd services, the following files control the limits:

-   `/etc/systemd/system.conf`
-   `/etc/systemd/user.conf`
-   `/etc/systemd/system/unit.d/override.conf`
-   `/etc/security/limits.conf`

[Systemd Docs](https://man.archlinux.org/man/systemd-system.conf.5).

## nproc

*The `nproc` setting defines how many processes a user is allowed to
have running at any one time.*

You can configure this in the `/etc/security/limits.conf`

``` bash
# /etc/security/limits.conf
user_name hard nproc number_of_processes
```

> To get the **total number of all running processes** right now for
> perspective, you can use the following command:

``` bash
ps aux -L | awk '{print $1}' | sort | uniq -c | sort -n | tail -n 1
```

### For systemd services

Total number of tasks that systemd allows for each user is usually **33%
of the system-wide total**.

Systemd creates a [Cgorup](/cgroups) for each user, which
sets limits on system resources such as the total number of processes
and RAM usage.

You can check the status of your user slice with:

``` bash
systemctl status user-$UID.slice
```

![User slice](/static/user_slice_process_limit_visual.png)

[Article](https://www.baeldung.com/linux/fork-bombs) ## Nofile

The `nofile` setting limits the number of file descriptors that any
process owned by the specified user can have open at any one time.

## [Core Files](/core_fiels)

Have a **soft limit of 0** and a hard limit of **unlimited** for core
files.

You can **temporarily raise your limit** for the current shell with the
following command when you need core files for debugging:

``` bash
ulimit -c unlimited
```

## ## [Nice](/Linux/nice)

> `Important` You should disallow everyone except for root from having
> processes with minimal niceness (-20).

*This ensures that root can address any unresponsive system issues
effectively.*

------------------------------------------------------------------------
