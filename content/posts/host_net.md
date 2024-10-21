---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: host_net
---

    [Containers](/Notes/posts/Containers) Share the same networkin  [Namespaces](/Notes/posts/Namespaces) as  host 

-   no [NAT](/Notes/posts/Network/basic_network_connections/NAT)
-   no [proxy](/Notes/posts/Linux/Network_manipulation/proxy) **–network
    host** flag

``` bash
docker run -d --name test --network host aura/myapp-188:v3
```

![Pasted_image_20240510105230.png](/Notes/Pasted_image_20240510105230.png)

------------------------------------------------------------------------

[bridge_net](/Notes/posts/bridge_net)
[overlay_net](/Notes/posts/overlay_net)
[docker](/Notes/posts/Linux/Docker/docker)
