+++
title = 'processes_kernel'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

An isnstance of the eceacutable 
 - **Only one process may use the Cpu and a given time**
	-   each process uses the [Cpu]({{< ref "posts/Linux/Kernel/Cpu.md" >}}) for a small fraction of as second then pauses then another process uses the [Cpu]({{< ref "posts/Linux/Kernel/Cpu.md" >}})
	-   This stitching is called [context switch_kernel]({{< ref "posts/Linux/Kernel/context_switch_kernel.md" >}})
- The app is running muitple processes 
	- The process is na continer 
	- Process ca run other porceses that are called *child processes*
- The process is not aware of ohter processes 
-  ![ProcessContainer_visual.png](/Notes/ProcessContainer_visual.png)
- Eaach process has it's own [Virtual Memory Address]({{< ref "posts/for_later/Virtual_Memory_Address.md" >}})
### Types of processes 
|     | *Types*              | *Functionality*                                                            |
| --- | -------------------- | -------------------------------------------------------------------------- |
|     | Aplication (app)     | Run a specyfic programm                                                    |
|     | Background porcesses | Process tahat run in the boacgorund and does not requiere user interaciton |
|     | WindowS processes    | System level processes                                                     |
|     |                      |                                                                            |

---
### Prioryty 
- Change prioryty using [nice]({{< ref "posts/Linux/nice.md" >}}) [renice]({{< ref "posts/Linux/renice.md" >}})
	- [Cpu]({{< ref "posts/Linux/Kernel/Cpu.md" >}}) time  = priority level
- Priortiy class 

| Class     | Function                                                            |
| --------- | ------------------------------------------------------------------- |
| Low       | this procces will run after all the other higher priority processes |
| Normal    | Defult pririority                                                   |
| Real time | Exlusive priority                                                   |

--- 
![threads]({{< ref "posts/for_later/threads.md" >}})
 
>[!quote] 