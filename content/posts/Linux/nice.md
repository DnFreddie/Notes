+++
title = 'nice'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Nice 
The nice command is used to influance the priority of procces to the kernel 
(*the kernel has a final say*)
- The more u're nice to other users the lower the priority
	- The values for nice range from (**-20 to +19**)
		![Niceness priority values_visula.png](/Notes/Niceness priority values_visula.png)
  >[!Example] To speed up slow procces
  >*The "n" value determines the priority level*
  >kali >nice -n 10 /bin/slowprocess

>[!quote] [renice](/Linux/renice.md) | [processes_kernel](/obisdian_ntoes/for later/processes_kernel.md) | [ps](/Linux/commands/ps.md) 