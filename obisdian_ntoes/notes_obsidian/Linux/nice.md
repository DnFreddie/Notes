---
date:: 01 04 2023
topic:: baisic-commands-resources
type:: Linux
---
## Nice 
The nice command is used to influance the priority of procces to the kernel 
(*the kernel has a final say*)
- The more u're nice to other users the lower the priority
	- The values for nice range from (**-20 to +19**)
		![Niceness priority values_visula.png](/static/Niceness priority values_visula.png)
  >[!Example] To speed up slow procces
  >*The "n" value determines the priority level*
  >kali >nice -n 10 /bin/slowprocess

>[!quote] [renice](/obisdian_ntoes/notes_obsidian/Linux/renice.md) | [processes_kernel](/obisdian_ntoes/for later/processes_kernel.md) | [ps](/obisdian_ntoes/notes_obsidian/Linux/commands/ps.md) 