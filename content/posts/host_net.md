+++
title = 'host_net'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    [Containers]({{< ref "posts/Containers.md" >}}) Share the same networkin  [Namespaces]({{< ref "posts/Namespaces.md" >}}) as  host 
- no [NAT]({{< ref "posts/Network/basic network connections/NAT.md" >}})
- no [proxy]({{< ref "posts/Linux/Network manipulation/proxy.md" >}}) 
**--network host**  flag
```bash
docker run -d --name test --network host aura/myapp-188:v3
```
 

![Pasted_image_20240510105230.png](/Notes/Pasted_image_20240510105230.png)



---
[bridge_net]({{< ref "posts/bridge_net.md" >}}) [overlay_net]({{< ref "posts/overlay_net.md" >}}) [docker]({{< ref "posts/Linux/Docker/docker.md" >}})