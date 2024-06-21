[playlist](https://www.youtube.com/watch?v=N1vgvhiyq0E&list=PLtK75qxsQaMKPbuVpGuqUQYRiTwTAmqeI&index=1)
[init](/init.md)

#### Units 
**Any entity** managed by systemd
>[!example]-
>![Pasted_image_20240514192234.png](/static/Pasted_image_20240514192234.png)



[systemd_ordering](/systemd_ordering.md)


#### Location 

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


- Last state is **multi-user.target**


u can move between the targets 
```bash
systemctl isolate sysinit.target
```

This will rollback to a given target
### Systemd procedures

>[!bug] Always execute the systemctl daemon-reload command
> After creating new unit files or modifying existing unit files. 
>*systemctl deamon-reload*

- **Mask Unmask**
	Blocks the service u can't start it or enable it 
	*(it creates a service that points to [devnull](/obisdian_ntoes/scriptss/devnull.md))*

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

[service](/obisdian_ntoes/notes_obsidian/Linux/service.md)


### Configuration
>[!example]- [Docs configuration](https://access.redhat.com/documentation/enus/red_hat_enterprise_linux/8/html-single/using_systemd_unit_files_to_customize_and_optimize_your_system/indexj)
>![Pasted_image_20240514205706.png](/static/Pasted_image_20240514205706.png)





### Systemd Timers
>[!example]
>![Pasted_image_20240514231948.png](/static/Pasted_image_20240514231948.png)

![Systemd](https://www.youtube.com/watch?v=n6BuUgkZ5T0)






--- 
[Cronetab](/obisdian_ntoes/scriptss/Cronetab.md) [At](/obisdian_ntoes/scriptss/At.md)
