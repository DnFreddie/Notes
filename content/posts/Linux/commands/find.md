+++
title = 'find'
date = 2024-07-22T09:10:24+02:00
draft = false
+++
- Look for the binaries 
    - **executable**

 ```bash
find -executable 

```
- Look for the broken links 

```
find . -xtype l
```
- Files changed in the last 24h 
```bash
find . -mtime -1
```
- Files changed erariler the the specyic date 
```bash
find . -type f -newermt 2019-07-24
```



- find *dir* -type f(file) -name (name of the file )
**find / will went through all dir**



### Wildcards
- **[  ]** match the characters that appears in the squere brackets 
-  * matches any charactert of any lenght from none to unlimited number of characters 
	 *A search for *  * *  at will display cat hat and bat *

>[!example] Possibilities
>![FindPossibilities.visual.png](/Notes/FindPossibilities.visual.png)

## U can search files via [Permissions]({{< ref "posts/Linux/Permissions.md" >}})

Finding files with perrmision 4000 [SUID]({{< ref "posts/Linux/SUID.md" >}})

```bash
find / -user root -perm -4000
```




