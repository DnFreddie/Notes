+++
title = 'Selinux containers'
date = 2024-08-09T22:04:51+02:00
draft = false 
tags = ["selinux"]
+++
*The Docker SELinux security policy is similar to the libvirt security policy*

- Docker  launches each container with a unique process SELinux label  `container_t`
- Labels all of the container content with a single label `container_file_t`

[Docs](https://www.redhat.com/sysadmin/user-namespaces-selinux-rootless-containers)

> ***This doesn't work with volumes!!!***

To label the file as a volume u have to change it context with `container_file_t`
```bash
sudo chcon -t container_file_t /path/to/file
```
Or if it's the directort then add the mark `:Z` at the and of the volume
- `-Z` only one contianer can acess to the volume 
- `-z` multiple containers can access the volume 
```yaml
volumes: 
- ".config/loki/local-config.yaml:/etc/loki/local-config.yaml:Z"  

```
##  Docker Access 
Docker has access to
- /usr/var/ 
- /var/lib/docker
- /var/lib/containers 
- most things in /etc.

>Tip
>
> Containers  can read everything labled  `svirt_sandbox_file_t`
>
>[Docs](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux_atomic_host/7/html/container_security_guide/docker_selinux_security_policy#docker_selinux_security_policy)
