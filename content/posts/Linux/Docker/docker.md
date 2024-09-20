+++
title = 'docker'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    

runing as host  
```bash
docker run --rm -ti --network host -v $PWD/work:/work parrotsec/security

```
Get rid of all running containers

```bash 
docker rm -f $(docker ps -a -q)
```

## ENTRYPOINT vs CMD
- Use `ENTRYPOINT` to define the main command that should always run.
- Use `CMD` to provide default arguments or commands that can be overridden.
```DockerFile
#Example
FROM ubuntu:latest

# Set the entry point
ENTRYPOINT ["python3", "app.py"]

# Set default arguments
CMD ["--help"]


```

## Docker logging 

- Basic options
- **--tail**
- **--head**
- **--since**
- **--until**
- **--follow**



## Checking the driver 

This logs are stored in ***/var/lib/docker/containers/<container_id>***

- U can check them by 

```bash
docker info --format '{{.LoggingDriver}}'
```

- In a particular container
```bash
docker inspect -f '{{.HostConfig.LogConfig.Type}}' <container_id>
```

>[!Note]- Login drivers list
>![Pasted_image_20240508103531.png](/Notes/Pasted_image_20240508103531.png)
>[Docs](https://betterstack.com/community/guides/logging/how-to-start-logging-with-docker/)


## Creating a driver

>[!example] Example file
>![Pasted_image_20240508103008.png](/Notes/Pasted_image_20240508103008.png)


## Changing the driver
- **--log-driver**

```bash
docker run --log-driver local --log-opt max-size=50m -p 80:80/tcp -d "betterstackcommunity/nginx-helloworld:latest"
```

>[!bug] Log rotation 
> isn't set by default in  json driver

## Docker Network
[[Docker Netwroks.canvas|Docker Netwroks]]


## Exposing vs publishing ports
- **Exposing a port** 
	-  letting others know on which port the container  is going to be listening on 
		 - This is for ***communicating with other containers***, not with the outside world.

```bash
docker container run \
	--expose 80 \
    --expose 90 \
    --expose 70/udp \
    -d --name port-expose busybox:latest sleep 1d
```
- **Publishing  ports**
	- Mapping the ports of the ***container with the host***

```bash
-p [optional_host_ip]:[host_port]:[container_port]/[optional_protocol]

```



```bash
docker container run --rm --name nginx \
	-p 80:127.0.0.1:8081/tcp -d nginx
```



## [Multi-stage docker images]({{< ref "posts/Linux/Docker/multi_stage_image.md" >}})


## Attach to the container 
```bash
docker exec -it (container id ) /bin/sh(or bash if installed)
```
## Docker compose 
**This file can be either yaml or json**

- version (*need to checuotu the last complibit version*)
	- It has to be a string! 
- servives  are whats beeing run 
	-   ![DockerComposeServices_visual.png](/Notes/DockerComposeServices_visual.png)
	- u can also define ports with 
		ports 
## commands 
- To start the server use **docker-compose up**
- To end the app type **docker compose down **
- **Auto-reload**
	![DockerAutoReload_visual.png](/Notes/DockerAutoReload_visual.png)

---
- [cloud-int]({{< ref "posts/cloud-int.md" >}})
