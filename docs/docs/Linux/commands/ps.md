---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: ps
---

<mark style="background: #FF5582A6;">list processes </mark> **aux - lsit
all the processes runing on ure computer** - can we piped with grep
\>\[!example\] ps aux \| [grep](/Linux/commands/grep) apache
2 \>this will list all the procces filtered by this keyword

| command | desription                                             |
|---------|--------------------------------------------------------|
| ps x    | show all of ure runing \[\[process\]\]                 |
| ps ax   | Show all \[\[process\]\] ont the system                |
| ps u    | onclued more detailed information about hte proces     |
| ps w    | Show full ocmmand ames not jsut what fits onb the line |

## Listing

The kernel is giving the ID from the first procces taht started to the
last [top](/Linux/top)

see the childer procces

``` bash
ps faucx| grep -i brave
```

> \[!quote\] [shell](/Linux/shell)
