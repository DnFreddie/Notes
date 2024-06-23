---
date:: 30 03 2023
topic:: linux-command 
type:: Linux
---
## ps 
<mark style="background: #FF5582A6;">list processes </mark>
**aux - lsit all the processes runing on ure computer**
- can we piped with grep 
 >[!example] ps aux | [grep](/obisdian_ntoes/notes_obsidian/Linux/commands/grep.md) apache 2
 >this will list all the procces filtered by this keyword

| command | desription                                         |
| ------- | -------------------------------------------------- |
| ps x    | show all of ure runing [[process]]                 |
| ps ax   | Show all [[process]] ont the system                |
| ps u    | onclued more detailed information about hte proces |
| ps w         |    Show full ocmmand ames not jsut what fits onb the line                                                |
## Listing 
The kernel is giving the ID from the first procces taht started to the last 
[top](/obisdian_ntoes/notes_obsidian/Linux/top.md)

see the childer procces
```bash
ps faucx| grep -i brave
```

>[!quote] [shell](/obisdian_ntoes/notes_obsidian/Linux/shell.md)
