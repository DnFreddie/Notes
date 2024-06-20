---
date:: 21 04 2023
type:: Linux
---
##   Central Processing Unit
_The brain of the computer_
-   The CPU is responsible for executing instructions of computer programs and controlling the other components of the computer system.
	-   It performs _arithmetic and logical operations on data, retrieves and stores data in memory, and communicates with other components of the computer_ (such as the memory, input/output devices, and secondary storage devices)

### CPU addresing
*set in bits*
- **Word** how big of a chunk of memory cpu can take and *operate on*
	- Thats why Therese the **x64** architecture
		- Coputer can operate only on **64 bits** at a time

>[!note]  x32 can only operate on  4Gigs of memory ...
>Now u can operate on 20 **exabyte**


### Cpu times (*Subdevisions*)

 **User**
 -  Amount of time  CPU was busy executing code in user space
 
 **System**
  -  amount of time the CPU was busy executing code [[Kernel|Kernel space]].

**Idle**(*for the whole system only*)
-   amount of time the CPU was not busy 
-  amount of time it executed the System Idle process.
	- *Idle time actually measures unused CPU capacity.*

**Steal**(*for the whole system only*)
-  on **virtualized hardware**, is the amount of time the operating system wanted to execute, but was not allowed to by the hypervisor.
	-  This can happen if the physical hardware runs multiple guest operating system and the hypervisor chose to allocate a CPU time slot to another one.

[[mpstat]]

### CPU process priorities
![nice](/obisdian_ntoes/notes_obsidian/Linux/nice.md)
- ![renice](/obisdian_ntoes/notes_obsidian/Linux/renice.md)
---
 [Compitaltion process](/obisdian_ntoes/Compitaltion process.md) [[garbage_collector_c]]