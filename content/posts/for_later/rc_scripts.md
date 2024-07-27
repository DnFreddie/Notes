+++
title = 'rc scripts'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Rc scripts 
- Scripts that set up the linux envairoment 
	- After the [Kernel]({{< ref "posts/Linux/Kernel/Kernel.md" >}}) has initialized and loaded all its modules, the kernel starts a dameon  **known as init or initd.** 
		- This daemon then begins to run a number of scripts found in */etc/init.d/rc*
### Adding [service]({{< ref "posts/Linux/service.md" >}}) to the boot 
- rc.d 
	- This command enables you to add or remove services from the rc.d script
		- ![AddingRcService_visual.png](/Notes/AddingRcService_visual.png)

>[!quote] [Cronetab]({{< ref "posts/scriptss/Cronetab.md" >}}) | [Run Levels]({{< ref "posts/for later/Run Levels.md" >}})