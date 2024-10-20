+++
title = '/proc'
date = 2024-10-16T17:36:10+02:00
draft = false
+++



## See the starter command 
```bash 
cat /proc/cmdline

```

## See the load avarge
```bash
cat /proc/loadavg
```

### Get the info of the processor 
```bash
cat /proc/
```

### Memory consumtion
**Get the actual info of how many mem the procces consumes**

```bash
cat /proc/1234/smaps
```
*In recent versions of Linux, use the smaps subsystem.*

For example, for a process with a PID of 1234

```bash
cat /proc/1234/smaps
```
It will tell you exactly how much memory it is using at that time.

More importantly, it will divide the memory into `private` and `shared`, so you can tell how much memory your instance of the program is using,

without including memory shared between multiple instances of the program.

>You can use awk to add up all the PSS entries:

```bash
awk '/^Pss:/ {pss+=$2} END {print pss}' < /proc/1234/smaps 
```

