---
date:: 21 04 2023
type:: Linux
---
An isnstance of the eceacutable 
 - **Only one process may use the Cpu and a given time**
	-   each process uses the [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md) for a small fraction of as second then pauses then another process uses the [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md)
	-   This stitching is called [context switch_kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/context switch_kernel.md)
- The app is running muitple processes 
	- The process is na continer 
	- Process ca run other porceses that are called *child processes*
- The process is not aware of ohter processes 
-  ![ProcessContainer_visual.png](/static/ProcessContainer_visual.png)
- Eaach process has it's own [Virtual Memory Address](/obisdian_ntoes/for later/Virtual Memory Address.md)
### Types of processes 
|     | *Types*              | *Functionality*                                                            |
| --- | -------------------- | -------------------------------------------------------------------------- |
|     | Aplication (app)     | Run a specyfic programm                                                    |
|     | Background porcesses | Process tahat run in the boacgorund and does not requiere user interaciton |
|     | WindowS processes    | System level processes                                                     |
|     |                      |                                                                            |

---
### Prioryty 
- Change prioryty using [nice](/obisdian_ntoes/notes_obsidian/Linux/nice.md) [[renice]]
	- [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md) time  = priority level
- Priortiy class 

| Class     | Function                                                            |
| --------- | ------------------------------------------------------------------- |
| Low       | this procces will run after all the other higher priority processes |
| Normal    | Defult pririority                                                   |
| Real time | Exlusive priority                                                   |

--- 
![threads](/obisdian_ntoes/for later/threads.md)
 
>[!quote] 