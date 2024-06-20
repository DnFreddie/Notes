
## Out of Memory killer 
- The system scores each  process  by how much the system would gain from eliminating it.

	- Finally, when it comes to the low memory state, the kernel kills the process of the highest score.
	- The score is located in ***/proc/PID/oom_score  ***

### Controlling  OOm
[Docs](https://www.baeldung.com/linux/memory-overcommitment-oom-killer)
- With **choom** 
```bash
choom -n 300 firefox
```

#etc 
- Using etc
	***/etc/systemd***

>[!example]
>![Pasted_image_20240512200927.png](/static/Pasted_image_20240512200927.png)



#### Processes  over-allocation 
- When process starts it usually *request more memory*  from the [[kernel]] then it need
	- [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md)  knows about it so it over allocates the memory  
		- It may allocate 8.5Gb in a 8Gb system
