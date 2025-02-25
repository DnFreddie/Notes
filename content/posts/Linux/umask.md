---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: umask
---

- The default value of umask is set in `/etc/login.defs`
-   This with touch command creates a file with different perrmisons
    -   by defult this is set to **0 2 2**
 

> Tip
> To change the umask value for a user, edit the file
> */home/username/.profile*

**Octal value : Permission**
0 : read, write and execute
1 : read and write
2 : read and execute
3 : read only
4 : write and execute
5 : write only
6 : execute only
7 : no permissions

