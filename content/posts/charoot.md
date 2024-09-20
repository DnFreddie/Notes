+++
title = 'charoot'
date = 2024-07-22T09:10:24+02:00
draft = false
+++
*Allows to control access to  a servie or filesystem whiel controling the expouser to the underling server*
- during the boot sequence (*emergency shell*)
- secure FTP (*SFTP*)

```bash 
chroot <newroot>[[command] arguemnts]

```
[Charoot sftp 1 Web](https://www.redhat.com/sysadmin/set-linux-chroot-jails)
[Charoot sftp 2 Web](https://www.redhat.com/sysadmin/deeper-linux-chroot-jails)


----

*utilized within the phone operating system.*
## Virtual Environment: 
It operates as a virtual environment with root user privileges, providing a secure and isolated space for applications.
## Access Restrictions:
Users can only access the specified tools within this environment, preventing interaction with other parts of the system.

### Mount Bind
Mount bind is employed to provide access to **host system resources** within the chroot directory.


---
[Namespaces]({{< ref "posts/Namespaces.md" >}})
