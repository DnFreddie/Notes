---
date: "2024-10-28T10:29:38+01:00"
draft: false
title: Hardlink
---

*It’s a pointer to an inode* - It shares the same inode

> **Is’s relly hard to delte it!!!**

## Unix mechanism of the storage

Since the file sharse the same indode

u can’t get rid of the program unlles **u remove of all the inodes**

## How to find the hardLink

> `ls -i` **Displays the 2 files that share the same inode**

``` bash
ls -li 

# Output:  
# total 2
# 416812020 -rw-r--r--. 2 aura aura 1679 Oct 27 13:00 main.go
# 416812020 -rw-r--r--. 2 aura aura 1679 Oct 27 13:00 test
```

> **[stat](https://www.man7.org/linux/man-pages/man2/stat.2.html) will
> dsipaly the number fo links is greater then one**

``` bash
stat hardlink.txt
# Output:
# File: test
# Size: 1679            Blocks: 8          IO Block: 4096   regular file
# Device: fd06h/64774d    Inode: 416812020   Links: 2
# Access: (0644/-rw-r--r--)  Uid: ( 1000/    aura)   Gid: ( 1000/    aura)
# Context: unconfined_u:object_r:user_home_t:s0
```

> **[find](/Notes/posts/Linux/commands/find) `--samefile` find the same
> files based on the [inodes](/Notes/posts/inodes)**

``` bash
ls
#Output:
# junk  orignalfile     hardlink

find -samefile test
# Output:
#./orignalfile
#./hardlink
```

------------------------------------------------------------------------

#CHECK when deleting the log files The same situation my appear when it
comes to the logrotate
