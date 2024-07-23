+++
title = 'Run Levels'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Run levels 

Run it with sudo **init** run level (*this are called init scripts*)

>[!Note] Does not work for [sysctl](/obisdian_ntoes/for later/sysctl.md) 

- **0** Halt the system 
- **1** Single user/minimal mode 
- **2 - 5** Multiuser (*gui mode*)
- **6** Reboot the system 
	- U can set the change the behaviors of it in */etc/iniittab* <mark style="background: #FF5582A6;">its dangerous</mark>


>[!example] 
>![Pasted_image_20240426141511.png](/Pasted_image_20240426141511.png)


>[!quote] [Cronetab](/obisdian_ntoes/scriptss/Cronetab.md) | [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md) | [rc scripts](/obisdian_ntoes/for later/rc scripts.md)