+++
title = 'host_net'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    [Containers](/Containers.md) Share the same networkin  [Namespaces](/Namespaces.md) as  host 
- no [NAT](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/NAT.md)
- no [proxy](/obisdian_ntoes/notes_obsidian/Linux/Network manipulation/proxy.md) 
**--network host**  flag
```bash
docker run -d --name test --network host aura/myapp-188:v3
```
 

![Pasted_image_20240510105230.png](/Pasted_image_20240510105230.png)



---
[bridge_net](/bridge_net.md) [overlay_net](/overlay_net.md) [docker](/obisdian_ntoes/notes_obsidian/Linux/Docker/docker.md)