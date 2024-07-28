+++
title = 'Cronetab'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## cronetab -e 
**U can run separate jobs as diffrent users**
- *If u got sudo u can edit others cronetabs with sudo cronetab -u username*
### cronejob
Crone jobs are cheduled in military time 
{ * } **if u dont care about the filed**
>[!example]
>![Pasted_image_20240428132914.png](/Notes/Pasted_image_20240428132914.png)

[Practise](https://crontab.guru/)
### Crone shortcuts 
This are located in */etc/cron.(daily,weekly)*
 U put there executable scripts
![CroneTabShortcuts.visual.png](/Notes/CroneTabShortcuts.visual.png)
### Crone globaly
>[!bug] Don't ever change the global config  
Add the cronjob as a separate file in */etc/cron.d*
### Boot  
[rc scripts]({{< ref "posts/for_later/rc_scripts.md" >}})

---
[Scheduling Scripts]({{< ref "posts/scriptss/Scheduling_Scripts.md" >}})   
