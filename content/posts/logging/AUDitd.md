+++
title = 'Auditd'
date = 2024-07-22T09:10:24+02:00
draft = false
categories = ["logging"]
tags = ["Redhat"]
+++
# Rules
#[Check](https://www.youtube.com/watch?v=lc1i9h1GyMA) #[Template](https://github.com/Neo23x0/auditd)


## ausearch 
[Ausearch Docs](https://linux.die.net/man/8/ausearch)
- *a tool to query audit daemon logs*


### Record types/Messages `-m`

*The event type is specified in the `type=` field at the beginning of every Audit record.*

[Docs](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/security_guide/sec-audit_record_types#sec-Audit_Record_Types)

### Keys `-k`
*U can add new keys with*

```bash
-w /path/to/file -p rwxa -k my_key
```
*And query by them*
```bash
ausearch -k passwd_changes
```
### Succes value `-sv`
Use the -m option to identify specific messages and `-sv` to define the success value.


```bash
ausearch -m USER_LOGIN -sv no 
```

### Selinux Logs 

[Selinux MAIN]({{< ref "posts/SELinux.md#logging">}})

### Summary
*search for executubles*
```bash
aureport  -i -x --summary
```

#### Ausyscall
*It gives u description of the syscall*

>Example
>```bash
>#Response is execve which is privilege escalations
>ausyscall 59
>```

---
[Loging on linux]({{< ref "posts/Loging_linux.md" >}})

[tripwire]({{< ref "posts/tripwire.md" >}})

[Redhat info](https://www.redhat.com/sysadmin/configure-linux-auditing-auditd)