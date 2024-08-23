+++
title = 'rsyslog'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## rsyslog.conf
*By defualt in `Redhat` kernel messages are not collected!*

>[Example](/Notes/Pasted_image_20230407153603.png)
>

### Forwording  log to a diffrnetnt location 
*By defualt this puts every log into* `one giant file`

*Ususaly chose one either UDP or TCP both my crasch it*
```bash
# Provides UDP syslog reception
 for parameters see http://www.rsyslog.com/doc/imudp.html
module(load="imudp") # needs to be done just once
input(type="imudp" port="514")


# Provides TCP syslog reception
for parameters see http://www.rsyslog.com/doc/imtcp.html
module(load="imtcp") # needs to be done just once
input(type="imtcp" port="514")
```
#### Templates/Filters
[TemplatingDocs](https://www.rsyslog.com/doc/configuration/templates.html)

*This shoudl have been created as a seprate rule in* `rsyslog.d`

*example*
```bash
template PerHostLog,"/var/log/syslog/%HOSTNAME%.log"
if  $fromhost-ip startswith '192.' then -?PerHostLog
& STOP
```

#### Sending messages to the host 
*Add this to the end of the rslog.conf*
```bash 
*.* @host:514
```
## The rsyslog rules 
>***The baisic format of this rules***
>
>**`facility.priority - action`**


- **facility** refrence the programm such as kernel or smth 
	- *facility types*
		- ![FacilityTypes_visual.png](/Notes/FacilityTypes_visual.png)
			- An asterisk wildcard ( * ) in place of a word refers to all facilities.
- **action** *Location where the logfiles should be sent*
- *priority*
    - **The codes warn, error, and panic have all been deprecated and should not be used.**
	- If the priority is * , messages of all priorities are logged.

>![Priority_Codes_visual.png](/Notes/Priority_Codes_visual.png)



