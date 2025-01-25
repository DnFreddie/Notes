---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: ssh
---

## Secure shell

*Looks and acts the same as a telnet but it’s encrypted*

### To checkot the config use

``` bash
 sshd -T
```

### Example Client config

``` bash
Host test
    HostName 123.457.23
    User test
    Port 22
     IdentityFile ~/.ssh/keys.pem
```

#### Key-gen

``` bash
ssh-keygen -t ed25519
```

> \[!bug\] Rember about [Permissions](/Notes/posts/Linux/Permissions)
> Wsl grants all the permison to a file that may casue issue becouse ssh
> will claim thas **insecure**
>
> The the permisons shoudl be `0400`

> \[!quote\] [ports](/Notes/posts/ports/ports)
> [podman](/Notes/posts/podman)
> [docker](/Notes/posts/Linux/Docker/docker)

### SSH Tunnels/Por forwarding

[Article](https://linuxize.com/post/how-to-setup-ssh-tunneling/)

``` bash
# -N to only mentaine the proxy  not interactable
# -f run in the backgorund 
#ssh -L [LOCAL_IP:]LOCAL_PORT:DESTINATION:DESTINATION_PORT [USER@]SSH_SERVER

ssh -L 5901:localhost:6969 -N -f user@remote.host
```

### Deufalt message

To cusotmise your ssh message use /etc/motd

-   Custom scripts can be found insider `/etc/update-motd.d`
    -   [Docs](https://linuxconfig.org/how-to-change-welcome-message-motd-on-ubuntu-18-04-server)

### Ssh options 

* `PortDefines` the TCP listening port.
* `PermitRootLoginIndicates` whether to allow or disallow root login.
* `MaxAuthTriesSpecifies` the maximum number of authentication tries. Afterreaching half of this number, failures are logged to syslog.
* `MaxSessionsIndicates` the maximum number of sessions that can be open fromone IP address.
* `AllowUsersSpecifies` a space-separated list of users who are allowed to connectto the server.
* `PasswordAuthenticationSpecifies` whether to allow password authentication. This option ison by default.
* `TCPKeepAliveSpecifies` whether or not to clean up inactive TCP connections.
* `ClientAliveIntervalSpecifies` the interval, in seconds, that packets are sent to the client to figure out if the client is still alive.
* `ClientAliveCountMaxSpecifies` the number of client alive packets that need to be sent.
* `UseDNSIf` on, uses DNS name lookup to match incoming IP addresses to names.
* `ServerAliveIntervalSpecifies` the interval, in seconds, at which a client sends a packet to
* `ServerAliveCountMaxSpecifies` the maximum number of packets a client sends to a server

#### Caching the ssh passphrases 

1. Type ssh-agent /bin/bash to start the agent for the current (Bash) shell.
2. Type ssh-add to add the passphrase for the current user’s private key. The
key is now cached.
3. Connect to the remote server. Notice that there is no longer a need to
enter the passphrase.
