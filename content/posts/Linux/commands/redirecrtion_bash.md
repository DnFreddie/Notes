+++
title = 'redirecrtion_bash'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Redirection to network addresses
Bash treats some paths as special and can do some network communication by writing to `/dev/{udp|tcp}/host/port`. Bash cannot setup a listening server, but can initiate a connection, and for TCP can read the results at least.

For example, to send a simple web request one could do:

```
sleep 5

exec 2> >(tee >(nc localhost 3000))
```

and the results of `www.google.com`'s default web page will be printed to `stdout`.


>[!quote] [bash_MAIN]({{< ref "posts/Linux/commands/bash_MAIN.md" >}}) [TCP]({{< ref "posts/Network/Ref_OSI/TCP.md" >}})