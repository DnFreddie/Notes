+++
title = 'Bridge network'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

 Virtual or psychical device that connect multiple **LAN's**

>![Pasted_image_20240510102627.png](/Pasted_image_20240510102627.png)
- All parts of the bridge will get their collision domain
>Bug
>
>Collisions
>
>When to or more devices on the same network try to transmit data at the exact same time (*some packet will be doped*)


### Docker bridging
- Default [docker]({{< ref "posts/Linux/Docker/docker.md" >}})
bridge doesn't allow for the **DNS** change
	-  U have to create one 
	- ***Dns Name is the same as the container name*** 


```bash
docker network create my-bridge-net --subnet  10.0.0..0/19 --gateway 10.0.0.1
```

>Example 
>
>Docker compose 
>![Pasted_image_20240510104017.png](/Pasted_image_20240510104017.png)


--- 
[NAT]({{< ref "posts/Network/basic_network_connections/NAT.md" >}})

[Host-net]({{< ref "posts/host_net.md" >}})