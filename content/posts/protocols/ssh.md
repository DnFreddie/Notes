+++
title = 'ssh'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Secure shell 
Looks and acts the same as a telnet

####  To checkot the config use 
 **ssd -T**

#### Key-gen 

```bash
ssh-keygen -t ed25519
```
>[!bug] Rember about [Permissions]({{< ref "posts/Linux/Permissions.md" >}}) 
>Wsl grants all the permison to a file that may casue issue becouse ssh will claim thas **insecure**


>[!quote] [ports]({{< ref "posts/ports/ports.md" >}}) [podman]({{< ref "posts/podman.md" >}}) [docker]({{< ref "posts/Linux/Docker/docker.md" >}})



### Deufalt message 

To cusotmise your ssh message use /etc/motd

- Custom scripts can be found insider `/etc/update-motd.d`
    - [Docs](https://linuxconfig.org/how-to-change-welcome-message-motd-on-ubuntu-18-04-server)

