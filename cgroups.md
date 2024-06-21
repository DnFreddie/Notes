### Control groups 
- Organize  all [[process]] in the system 
- Account for resource usage and gather utilization data 
- Limit or prioritize resources utilization 


### Subsystem
- Control group system in an abstract framework 
- Concrete implementation of the control group s
-  Subsystem can organize process separately 
	- Most of them are resource controller


 >[!example]-
 >- Memory
 >- [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md)itme 
 >- Block I/O
 >- [PID_control](/PID_control.md)
 >- Freezer(used by docker pause )
 >- Devices 
 >- Network priority 

#### Hierarchical representation 
![Pasted_image_20240509114957.png](/static/Pasted_image_20240509114957.png)
##### Cgroup virtual filesystem 
- Mouted at ***/sys/fs/cgroup***
	- There are mostly just interfaces
- **Task** virtual file holds all [[PID_control|Pid]] in the cgroup 
-Other files have setting and utilization data 


--- 
[Namespaces](/Namespaces.md) [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md)


