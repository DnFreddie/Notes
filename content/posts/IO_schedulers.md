+++
title = 'IO schedulers'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

- I/O schedulers exist as a way to optimize disk access requests.
- It's  merging I/O requests to similar locations on disk. By grouping requests located at similar sections of disk, the drive doesn't need to "seek" as often, improving the overall response time for disk operations.
- The  **run-time config** is located in
	 ***/sys/block/sda(disk)/queue/scheduler***

- **Persistent config** is located in 
	 ***/etc/default/grub***
```bash
GRUB_CMDLINE_LINUX="elevator=noop"
```
>[!bug]- Schedulers are applied on each disk device separately.
>If we were to change the value in the file above, this would mean that all filesystems on disk device sda will use the new I/O scheduler.



## Deadline Scheduler
 Minimize I/O request latency by setting **deadlines** for each request and prioritizing requests based on their deadlines. 
- It ensures that time-sensitive tasks get preferential treatment.


## CFQ (Completely Fair Queuing)
 Divides I/O requests into **separate queues** for each process 
- allocates a fair share of the disk bandwidth to each queue. 
- It aims to provide fair access to the disk for all processes.


# NOOP 
schedules I/O requests in the order they are received, **without any reordering or prioritization**.
- It is often used in systems where the underlying storage device already performs its own optimizations.

# Anticipatory 
 Predicts future I/O requests and schedules them in advance to minimize seek times and improve overall throughput. 
- It aims to reduce disk latency by anticipating upcoming requests.

## BFQ (Budget Fair Queueing) 
Assigns a budget to each process based on its priority and dynamically adjusts the budget based on the process's behavior.
- It aims to provide low latency for interactive tasks while also maximizing overall throughput.


