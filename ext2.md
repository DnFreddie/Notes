#### Second Extended File System
(the oldest)
#### Architecture
- Data is stored in files; files are stored in
		directories. A directory can contain either files or other directories (*sub directories*).
- The max file size is **2TB**
	- files name can be up to 255 characters long 
- The volume is up to **4b**


>[!bug]- **ext2** takes  a lot of time to recover
> To clean up the file system, the ext2  will automatically run a program called [e2fsck](/e2fsck.md) the next time the system is booted. 
> 
> If it finds nonallocated files or unclaimed blocks of data, it will write this information in a directory called lost+found. By doing this, ext2 tries to **ensure that data integrity is maintained** in spite of the improper shutdown.
> 
The issue here is that [e2fsck](/e2fsck.md)  will **analyze the <mark style="background: #FF5582A6;">entire file system</mark>** when this happens, not just the last few files that were in the process of being modified

---
[ext3](/ext3.md) [ext4](/ext4.md) [[Files systems.canvas|Fiels systems]]