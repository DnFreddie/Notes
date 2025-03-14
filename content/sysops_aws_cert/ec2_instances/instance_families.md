---
date: "2024-08-24T19:46:01+02:00"
draft: false
tags:
- ec2
title: Instance Types
---

(**A, C, D, H, I, R, T, Z**) refer to different families of instance
types, each optimized for specific use cases

[Aws Docs](https://aws.amazon.com/ec2/instance-types/)

1.  **A (General Purpose)**: - These instances provide a balance of
    compute, memory, and networking resources. They are suitable for a
    variety of workloads, including small and mid-sized databases, data
    processing tasks, and web servers.

2.  **C (Compute Optimized)**:

    -   These instances are designed for compute-intensive applications.
        They provide high-performance processors and are ideal for tasks
        such as high-performance web servers, batch processing, and
        scientific modeling.

3.  **D (Dense Storage)**:

    -   These instances are optimized for workloads that require high
        disk throughput and large amounts of storage. They are suitable
        for data warehousing, Hadoop distributed computing, and other
        data-intensive applications.

4.  **H (High Memory)**:

    -   These instances are optimized for memory-intensive applications.
        They provide a high ratio of memory to vCPUs and are ideal for
        in-memory databases, big data analytics, and high-performance
        computing (HPC) applications.

5.  **I (I/O Optimized)**:

    -   These instances are designed for applications that require high
        input/output operations per second (IOPS). They are suitable for
        NoSQL databases, data warehousing, and other applications that
        require fast access to large datasets.

6.  **R (Memory Optimized)**:

    -   These instances are optimized for memory-intensive applications,
        providing a high amount of RAM relative to vCPUs. They are ideal
        for applications such as in-memory databases, real-time big data
        analytics, and high-performance computing.

7.  **T2/T3 (Burstable Performance)**:

    -   These instances provide a baseline level of CPU performance with
        the ability to burst to higher levels when needed.
    -   If the machine bursts, it uses `burst credits` -They are
        suitable for applications with variable workloads, such as web
        servers and development environments. *If CPU credits are
        exhausted beyond the `burst level`, then the CPU performance
        will slow down to the baseline level.* ![Cpu spike
        grahp](/static/burstable_instance_visual.png)

-   U can setup the unilited but be cerfull
    -   U pay extra money when over the credit balance
    -   U pay for additional `vCPU/h` if the `avarge cpu usage` **over
        24h** exceeds the baseline

8.  **Z (High Performance Computing)**:
    -   These instances are designed for high-performance computing
        applications that require significant computational power. They
        are suitable for workloads such as simulations, financial
        modeling, and scientific computing. — bash
        [Ec2instance](/sysops_aws_cert/ec2_instances/instance_families/)

``` bash
perl -p -i -e ''
```
