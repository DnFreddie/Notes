---
date:: 21 04 2023
type:: Linux
---

## Baisisc info of the kernel 
**uname -a**/**-r**
>[!tip]- Result 
>![KernnelVersion_visual.png](/static/KernnelVersion_visual.png)

### Main tasks
-   Spliting memory into subdevisons
-   **[processes_kernel](/obisdian_ntoes/for later/processes_kernel.md)**

-   The kernel is responsible for determining which processes are allowed to use the CPU.

-   **Memory**
	-   The kernel needs to keep track of all memory—what is currently allocated to a particular process,
	    
	    what might be shared between processes, and what is free.  
	    

-   **Device drivers**
	-   The kernel acts as an interface between hardware (such as a disk) and processes. It’s
	    
	    usually the kernel’s job to operate the hardware.  
	    

-   **System calls and support**
	-   [processes_kernel](/obisdian_ntoes/for later/processes_kernel.md) normally use system calls to communicate with the kernel.


### See the previous verison of the kernel that are on the machine
**Rembeber to backup the Kernel**

```bash 
ls -l /boot/vm*
```

```bash
apt list --installed | grep linux-image
```

### Kernel Otpions
U have to write to *etc/sysctl.conf*
![sysctl](/obisdian_ntoes/for later/sysctl.md)




### Boot 
[Boot procces](/Boot procces.md)
![rc scripts](/obisdian_ntoes/for later/rc scripts.md)


[cgroups](/cgroups.md)




--- 

