+++
title = 'systemd'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

[playlist](https://www.youtube.com/watch?v=N1vgvhiyq0E&list=PLtK75qxsQaMKPbuVpGuqUQYRiTwTAmqeI&index=1)

# Units 
**Any entity** managed by systemd
>[!example]-
>![Pasted_image_20240514192234.png](/Notes/Pasted_image_20240514192234.png)



[systemd_ordering]({{< ref "posts/systemd_ordering.md" >}})


## Location 

- ***/lib/systemd/systemd*** 
	 standard systmed unit files
- ***/usr/lib/systmed/system*** 
		for locally installed packages (via apt-get)
- ***/run/systemd/systemd***
	transient unit files
- ***/etc/systemd/system***
	custom unit files
	


### Systemd targets 
Way of managing relation between units
It's basically groups processor on phases and start them in a correct order

```bash
systemctl list-units --type=target
```


- ***Target types***
    - Service units: These represent system services.
    - Target units: These are used to group units and act as synchronization points during boot-up.
    - Device units: These represent devices in the system.
    - Mount units: These define mount points for file systems.
    - Socket units: These represent inter-process communication sockets.
    - Timer units: These define timer-based activation of other units.
    - Path units: These trigger activation of other units based on file system events.
    - Snapshot units: These are used to save the state of the systemd manager.


- Last state is **multi-user.target**


`u can move between the targets`

***!!This will rollback to a given target!!**
```bash
systemctl isolate sysinit.target
```

### Systemd procedures

>[!bug] Always execute the systemctl daemon-reload command
> After creating new unit files or modifying existing unit files. 
>*systemctl deamon-reload*

- **Mask Unmask**
	Blocks the service u can't start it or enable it 
	*({{< ref "postsit creates a service that points to [devnull](/scriptss/devnull.md" >}}))*

- **Reload service**
	Try to reload the config and apply changes

- **Restart Service**
	Close the program and re-run it without the check

**New way**
```bash
sudo systemctl restart *service*
```
**Old way**
```bash
sudo service *name* restart 
```

[service]({{< ref "posts/Linux/service.md" >}})



#### See what was dirscly when the unit was started

**Example** ssh

```bash
systemd-analyze critical-chain ssh
systemctl cat ssh
```




### Configuration
>[!example]- [Docs configuration](https://access.redhat.com/documentation/enus/red_hat_enterprise_linux/8/html-single/using_systemd_unit_files_to_customize_and_optimize_your_system/indexj)
>![Pasted_image_20240514205706.png](/Notes/Pasted_image_20240514205706.png)





### Systemd Timers
>[!example]
>![Pasted_image_20240514231948.png](/Notes/Pasted_image_20240514231948.png)

![Systemd](https://www.youtube.com/watch?v=n6BuUgkZ5T0)






--- 
[Cronetab]({{< ref "posts/scriptss/Cronetab.md" >}})
[At]({{< ref "posts/scriptss/At.md" >}})
[init]({{< ref "posts/init.md" >}})
