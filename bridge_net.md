Virtual or psychical device that connect multiple [LAN](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Network Types/LAN.md) 's
![Pasted_image_20240510102627.png](/static/Pasted_image_20240510102627.png)
- All parts of the bridge will get their collision domain
>[!bug] Collisions
 When to or more devices on the same network try to transmit data at the exact same time (*some packet will be doped*)


### Docker bridging
- Default [docker](/obisdian_ntoes/notes_obsidian/Linux/Docker/docker.md) bridge doesn't allow for the [DNS](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DNS.md) change
	-  U have to create one 
	- ***[[Dns]] Name is the same as the container name*** 


```bash
docker network create my-bridge-net --subnet  10.0.0..0/19 
--gateway 10.0.0.1
```

>[!example] Docker compose 
>![Pasted_image_20240510104017.png](/static/Pasted_image_20240510104017.png)


--- 
[NAT](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/NAT.md) [host_net](/host_net.md)