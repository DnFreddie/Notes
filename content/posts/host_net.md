---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: host net
---

    [Containers](/Containers) Share the same networkin  [Namespaces](/Namespaces) as  host 

-   no [NAT](/Network/basic_network_connections/NAT)
-   no [proxy](/Linux/Network_manipulation/proxy) **–network
    host** flag

``` bash
docker run -d --name test --network host aura/myapp-188:v3
```

![Pasted_image_20240510105230.png](/static/Pasted_image_20240510105230.png)

------------------------------------------------------------------------

[bridge_net](/bridge_net)
[overlay_net](/overlay_net)
[docker](/Linux/Docker/docker)
