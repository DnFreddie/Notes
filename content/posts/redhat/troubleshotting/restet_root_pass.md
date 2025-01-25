---
title: 'Restet Root Pass'
date : 2025-01-21T20:31:47+01:00
draft: false
---

1. On system boot, press e when the GRUB 2 boot menu is shown.
2. Enter init=/bin/bash as a boot argument to the line that loads the kernel and
press Ctrl-X to boot with this option.
3. Once a root shell is opened, type mount -o remount,rw / to get read/write
access to the root filesystem.
4. Now you can enter passwd and set the new password for the user root.
5. Because at this very early boot stage SELinux has not been activated yet, the
context type on /etc/shadow will be messed up. Type touch /.autorelabel to
create the autorelabel file in the root directory. This will make sure that while
rebooting the SELinux security labels are set correctly.
6. Type exec /usr/lib/systemd/systemd to replace /bin/bash (which is the cur-
rent PID 1) with Systemd. This will start your system the normal way. Notice
that you cannot use the reboot command, as /bin/bash is currently PID 1 and
the reboot command requires Systemd as the PID 1.
7. Verify that you can log in as the root user after rebooting.
8. U can't reboot mannualy so use `exec /usr/lib/systemd/system.`
