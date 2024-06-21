---
date:: 21 04 2023
type:: Linux
---
## Rc scripts 
- Scripts that set up the linux envairoment 
	- After the [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md) has initialized and loaded all its modules, the kernel starts a dameon  **known as init or initd.** 
		- This daemon then begins to run a number of scripts found in */etc/init.d/rc*
### Adding [service](/obisdian_ntoes/notes_obsidian/Linux/service.md) to the boot 
- rc.d 
	- This command enables you to add or remove services from the rc.d script
		- ![AddingRcService_visual.png](/static/AddingRcService_visual.png)

>[!quote] [Cronetab](/obisdian_ntoes/scriptss/Cronetab.md) | [Run Levels](/obisdian_ntoes/for later/Run Levels.md)