+++
title = 'NTP_protocol'
date = 2024-07-22T09:10:24+02:00
draft = false
+++
## Network Time Protocol

- **Synchronizing the clocs of the system**
	- Log files authentication outage deatails 
- **Automatic Updates** 
	- No flasching 12:00 lights  
- Switches routers firewalls servers and workstatio [UDP](/obisdian_ntoes/for later/UDP.md) **/123**
	- Every device has it's own clock 
- **Flexible** 
	- You control how clocks beeing updated 


## Stratum  
The **distance from the original clock refrence** 
*Accuracy of an NTP server* 
- Some clock are more accurate then others 
	- Straum 0 if **u define the time**
	- Straum 1 synchornized with the straum 0 


## Configuring 
NTP cleint 
- Specyfie the NTP **server addres** 
- Use multiple NTP servers
## NTP server  

- listens to  [UDP](/obisdian_ntoes/for later/UDP.md) **/123** 
	- Need at leas one clock source 
	- Specyfiy the stratum level of choice 
		- Response to time request from NTP clients 
		- ==Does not modify their own time==

## NTP client
- Request time updates form NTP server


## NTP client/server

- Requests time updates from an NTP server 
- Responds to time request from other NTP clients 


**Important to plan NTP stategy while creatin an network**


