+++
title = 'rsyslog'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## rsyslog.conf
**Its located in [[etc]] dir** 
>[!example]-
>![Pasted_image_20230407153603.png](/Notes/Pasted_image_20230407153603.png)
>

## The rsyslog rules 
The baisic format of this rules 
*facility.priority - action*

- **facility** refrence the programm such as kernel or smth 
	- *facility types*
		- ![FacilityTypes_visual.png](/Notes/FacilityTypes_visual.png)
			- An asterisk wildcard ( * ) in place of a word refers to all facilities.
- **action** *Location where the logfiles should be sent*
- *priority*
    - **The codes warn, error, and panic have all been deprecated and should not be used.**
	- If the priority is * , messages of all priorities are logged.

>![Priority_Codes_visual.png](/Notes/Priority_Codes_visual.png)


