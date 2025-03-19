---
title: Quadlet Podman
date : 2025-02-25T21:38:48+01:00
draft: true
categories: 
  - drafts
---

##  Introuduction 
we ussualy don't dwell muthch on the contianerization we user docker becoes wi first statt using itn and we hear 
or we use podman  becuase it was was it first intalled on the system 
But wiht the recent outdate of the podman generalte featuer i want ot dewll on more about the internal of those two apraoches and how they 
can 
<!-- more -->
## API vs Fork-Exec
What might not come as a surprise but helps in gaining a deeper understanding of Docker (and Kubernetes) is the fact that both essentially operate as one big REST API server. When we interact with the main node, we send API requests and receive responses accordingly.

This makes Docker function as a **monolithic structure**, where the daemon (`dockerd`) is responsible for all container operations. This centralization means that if `dockerd` fails, everything fails. For example:
- If the **storage driver is corrupted or outdated**, all containers become unusable.
- Since Docker requires elevated permissions, it runs as **root**, making security a key concern.

This model of a long-running daemon controlling everything doesn't align with the traditional **POSIX process model**, where processes naturally manage themselves using the `fork-exec` pattern.

### **Fork-Exec: The Alternative**
If you recall **process IDs (PIDs)**, you'll know that processes naturally spawn and manage themselves. 
The first process in a Linux system is **init** (or `systemd`), which governs all other processes.

Some might ask: *What happens if `systemd` fails?* The answer is simple: if `systemd` crashes, you have far bigger problems, as your entire physical or virtual machine would become unresponsive.

Unlike Docker, traditional processes in a Unix-like system:

- Are **independent** of a central daemon.
- Have **different owners** and user-level permissions.
- Are **more regulated** in terms of execution and lifecycle.

### **Linger Option in Systemd**
By default, **user services** managed by `systemd` only run while the user is logged in.

However, Docker containers are **persistent**, meaning they run even when no users are logged in.

To check if lingering is enabled for a user:
```bash
loginctl show-user <username>
```
Example output:
```bash
$ loginctl show-user aura
Linger=no
```
If `Linger=no`, then services for that user will **not** persist after logout.

To enable lingering (allow user services to run even after logout):
```bash
loginctl enable-linger $USER
```
This ensures that processes continue running **without relying on a global daemon** like `dockerd`.

## To Generate or Not to Generate?

Who among us doesn’t love `systemd` and all its capabilities, especially when working with containers?
However, we all know the struggle of manually generating a service file for a specific container and then customizing it.
It’s just inconvenient. And as it turns out, this old method is now deprecated. 
### **The New Way of Creating Services**
Instead of manually writing `systemd` service files, we now use **`.container` files**.or genearting them with podman systemd genearte 
Which are located accrodingly  in 
- For system-wide containers: `/etc/containers/systemd/`
- For user-specific containers: `/home/$USER/.config/containers/systemd/$FILENAME.container`

### **The `.container` File Format**

The formath is rekavtuvku straight forward if u want to know more u just run man quadllet and this \w
will explain everthing 

Rember that the container file us essabntialy a servuce \
So u can use execpres start timeout and all the good stuff 
one thing to also mention is the fact that if the command to enable the pre command to fail s
smt if we set - before this means can failed and wont discourage systemd for executing out service 

### **What’s Nice About This?**
The best part? We still get all the benefits of our familiar `systemd` service files! We can:
- Add mounts
- Set timeouts
- Customize execution settings
- And more!

### **Verifying Your Setup**
To make sure everything is correctly formatted and placed in the right directory, use:
```bash
/usr/lib/systemd/system-generators/podman-system-generator --dry-run --user
```
This will check your `.container` files and print the **generated service** output.

### **Do Not Enable Auto-Generated Services**
Although you might be tempted to blindly use the `--enable` option, **don’t**. Generated files **cannot** be enabled in the usual way. [Find an article about this issue.]

Luckily, `systemd` takes care of everything for us—just **start the service**, and you’re good to go!
Also in order to change enable systemctl service as user u have to be in the interactive session 
example beeing login in the tty terminal either u can login as using the logut and login in your login menager 
or alt +f6 to login as tty  the other option if ur;e ssh deamon is enabled is to   login shh usernam@localhost \
this will enalbe you to setup the service 
in other whea u will see failed to conect to the dbus 

### **One Key Thing to Remember**
Even though the file is named `.container`, **`systemd` will treat it as an actual service**. So when managing it, use standard `systemctl` commands!

This makes container management with `systemd` much easier and more efficient!


