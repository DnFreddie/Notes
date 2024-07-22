+++
title = 'rsyslog'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ---
date:: 06 04 2023
topic:: sytemlog-baisic-penatration
type:: Linux
---
## rsyslog.conf
**Its located in [[etc]] dir** 
>[!example]-
>![Pasted_image_20230407153603.png](/static/Pasted_image_20230407153603.png)
>

## The rsyslog rules 
The baisic format of this rules 
*facility.priority - action*

- **facility** refrence the programm such as kernel or smth 
	- *facility types*
		- ![FacilityTypes_visual.png](/static/FacilityTypes_visual.png)
			- An asterisk wildcard ( * ) in place of a word refers to all facilities.
	- *priority*
		- ![Priority Codes_visual.png](/static/Priority Codes_visual.png)
		- **The codes warn, error, and panic have all been deprecated and should not be used.**
			- If the priority is * , messages of all priorities are logged.
**action**
	*Location where the logfiles should be sent*



>[!quote] 
