---
title: 'Metrics'
date : 2025-03-09T12:15:02+01:00
draft: false
---
# Profiling 
Use tools that perform Sampling
## Sampling CPU
* taking *timed-interval* samples of the on-
CPU code paths.
### Flame graphs
* Flame graphs visualize function calls and their CPU usage.
    * They show which functions were called, their execution order, and how much CPU time they consumed.
    * The wider a function block is, the more CPU time it took.
*   Syscalls appear in the stack, revealing how the program interacts with the operating system.
  *  It also show which function called which function in the stack
> The more red the more CPU CONSUMPTION
> ![Flame Graph ](/static/flame_graph_visual.png) 

## Tracing 
`Event Based Recording`  *(`tracing` `dumping` and `snooping` are basically the same)*

* `execscooop`  *looks for small programs running in the background*
    * Run mini programs on the kernel application events
    * Similar to java script running on click or on scroll on top of the main runtime 

### Static Instrumentation
*marking the functions inside the code so that later u can see how often they are used and their performance* 

### Dynamic Instrumentation
*You to insert measurement points while it's running*
Similar to debugger setting the break points...

## **Linux 60-Second Performance Analysis Checklist**
*This is a Linux tool-based checklist that can be executed in the first 60 seconds of a performance issue investigation*

| **Tool & Command**       | **Check**  |
|-------------------------|---------------------------------------------
| `dmesg -T | tail`        | Kernel errors, including OOM (Out of Memory) events. |
| `vmstat -SM 12`           | System-wide stats: run queue length, swapping, overall CPU usage. |
| `mpstat -P ALL 1`        | Per-CPU balance: a single busy CPU may indicate poor thread scaling. |
| `pidstat 1`              | Per-process CPU usage: identify unexpected CPU consumers, user/system CPU time per process. |
| `iostat -sxz 2`          | Disk I/O stats: IOPS, throughput, average wait time, percent busy. |
| `sar -n DEV 1`           | Network device I/O: packets and throughput. |
| `sar -n TCP,ETCP 1`      | TCP statistics: connection rates, retransmits. |
| `top`                    | Check system overview: CPU, memory, and process usage. |


# Io utilization 
*Some components  might work better with the 102% utilization*
##  Disks and storage arrays
* `Disk`
    * A disk that is 100% busy may also be able to accept and process more work
        * Example by buffering writes in the on  disk cache to be completed later.
* `Storage arrays` 
 * frequently run at 100% utilization because some disk is busy 100% of the
 * time, but the array has plenty of idle disks and can accept more work
# Cache 
##  Hit or miss ration
> *The higher the better* 
> hit ratio = hits / (hits + misses)

* `Hits` The number of times a requested item is found in the cache.
* `Misses` The number of times the requested item is not in the cache and must be retrieved from a slower source.

### Hot, Cold, and Warm Caches
`Warmth` *activity that improves the `hit ratio`*

* `Cold` is empty or with unwanted  data the **`hit ratio`is 0** (*or near zero if it begins to warm up*)
* `Warm` populated with useful data but not enoughi `hit ratio`to be consider  `hot`
* `Hot` has commonly requested data and has high `hit ration` 

# Operating Systems

##  Traping
*It's basically kernel managing  his little child (user space)*

* `SystemCalls` *(asking for help)*
    * program asks the operating system for help, like reading a file. 
* `Error&Exeption` *(making mistakes/divide-by-zero trap)*
    * when your program tries something impossible, the CPU stops it and calls the OS to handle the error. 
* `Page Fault` 
    * when your program needs memory that is’t ready, the computer stops, loads the memory, and then continues.

### Interrupts in general 
*It saves the state of the process , and then run an interrupt service routine
(ISR) to resolve the issue.*

#### Interrupt masking 
* `Interrupt Masking` = "Don't talk to me right now!"
  * Process is doing something important and can't be stopped 
* `None-Maskable interutps` **(NMI)** 
   * Basically  that bypassed process that can't be stopped 
* Linux can use an **Intelligent Platform Management Interface** `(IPMI)`
    * watchdog timer that checks if the kernel
    appears to have locked up based on a lack of interrupts during
    a period of time. If so, the watchdog can issue an NMI
    interrupt to reboot the system 
    * Linux also has a software NMI watchdog for detecting lockups 


#### Hardware interrupt (type of trap)
* A signal sent by physical devices to the kernel *(usually to request servicing of I/O.)*

# Memory paging vs swapping 

* Paging  is free small parts of the memory from the programms to sustain
memory consumiton
* Swapping is cleaning the entire program memory so the other can use it 
    * very slow and inefficient
## Vfs 
*(virtual filesystem)*
It determines for u which disk and file system is responsible for the
particiular disk 
* U don't  have to worry about using the particular dirver 
    *  it's a layer of abstraction 

# Tracepoints
*Tracepoints are like execution checkpoints/sesnosrs in the Linux kernel.*
* They send debug information when a certian syscall is triggered by the
  proccess *(example file opening)*
    *  The list of avaiable tracepoints is stored int `/sys/kernel/debug/tracing/events/`

