---
title: 'Metrics'
date : 2025-03-09T12:15:02+01:00
draft: false
---
# Profiling 
* Use tools that perform Sampling 
## CPU text 
* taking *timed-interval* samples of the on-
CPU code paths.
    * `flame graphs`
| Flame Graph 1 | Flame Graph 2 |
|--------------|--------------|
| ![Flame Graph 1](/Notes/flame_graph_visualsiatio_.visual.png) | ![Flame Graph 2](/Notes/flame_graph_visual.png) |

Flame graphs visualize function calls and their CPU usage.
They show which functions were called, their execution order, and how much CPU time they consumed.
The wider a function block is, the more CPU time it took.
Syscalls (system calls) appear in the stack, revealing how the program interacts with the operating system.
The wider the line the more time process took on the CPU
![Function stack](/Notes/flame_graph_visual_functions.png)


## Tracing 
`Event Based Recording`  (*tracing dumping and snooping are basically the same*)
* `execscooop`  *looks for small programs running in the background*
    * Run mini programs on the kernel application events
    * Similar to java script running on click or on scroll on top of the main runtime 


### Static Instrumentation
*marking the functions inside the code so that later u can see how often they are used and their performance* 
### Dynamic Instrumentation
*You to insert measurement points while it's running*
Similar to debugger setting the break points...

# **Linux 60-Second Performance Analysis Checklist**
*This is a Linux tool-based checklist that can be executed in the first 60 seconds of a performance issue investigation*

| **Tool & Command**       | **Check**  |
|-------------------------|---------------------------------------------
| `uptime`                 | Load averages to identify if load is increasing or decreasing (compare 1-, 5-, and 15-minute averages). |
| `dmesg -T | tail`        | Kernel errors, including OOM (Out of Memory) events. |
| `vmstat -SM 1`           | System-wide stats: run queue length, swapping, overall CPU usage. |
| `mpstat -P ALL 1`        | Per-CPU balance: a single busy CPU may indicate poor thread scaling. |
| `pidstat 1`              | Per-process CPU usage: identify unexpected CPU consumers, user/system CPU time per process. |
| `iostat -sxz 1`          | Disk I/O stats: IOPS, throughput, average wait time, percent busy. |
| `free -m`                | Memory usage, including filesystem cache. |
| `sar -n DEV 1`           | Network device I/O: packets and throughput. |
| `sar -n TCP,ETCP 1`      | TCP statistics: connection rates, retransmits. |
| `top`                    | Check system overview: CPU, memory, and process usage. |



# **CPU Modes Explained**

| **Mode**    | **Description**                                      | **Indicates** |
|------------|--------------------------------------------------|--------------|
| **user**   | Time spent running **user-space processes** | High values indicate **CPU-intensive applications** (e.g., databases, compilers). |
| **system** | Time spent running **kernel processes** | High values suggest **kernel-heavy tasks** like I/O operations, network processing, or excessive syscalls. |
| **idle**   | CPU **not doing any work** | Low idle time means **high CPU utilization**. |
| **iowait** | CPU **waiting for I/O operations** (disk/network) | High `iowait` indicates **disk or network bottlenecks**. |
| **steal**  | Time **stolen by virtual machines** (used in VMs/cloud) | High values mean the **VM is starved of CPU by the hypervisor**. |
| **irq**    | Time spent servicing **hardware interrupts** | High values suggest **hardware devices generating excessive interrupts** (e.g., network cards, storage controllers). |
| **softirq**| Time spent on **software interrupts** | Used by **network processing, timers**, etc. |
| **nice**   | Time spent on **low-priority user tasks** | If high, means **CPU-intensive tasks are running with lower priority**. |


