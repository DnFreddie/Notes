+++
title = 'Kernel modules'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Kernel modules  
- **modeprobe**
	- Automatically loads dependencies and makes loading and removing kernel modules less risky
		- -a add module 
		- - r remove
			- *The most modern and best approach*
- **lsmod**
	- list all available kernel nodules and information of their size 
 - **modeinfo**
	 - IT gives a summarize of the module
>[!example]-
>![ModeInfoResult_visual.png](/Notes/ModeInfoResult_visual.png)
	 
- **insmode**
	- load or or insert a module 
- **rmmod** 
	- remove the mode(**Be carfull with this!**)

