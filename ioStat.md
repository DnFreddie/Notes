- Check the I/O stat of the computer 
	- The defult without the flags show only what happend after the boot


>[!tip] look for the %util

```bash
iostat -hymx 1 4 
```
 Only things that have *activity*  **-xz**

- Install **ioTop** with the **-o*** flag
	- to **filter** the processes that **only use  I/O** on the machine


---

[command](/obisdian_ntoes/scriptss/command.md)
