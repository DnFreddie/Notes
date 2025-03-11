---
date: "2024-08-23T10:36:15+02:00"
draft: false
tags:
- ec2
title: Placement groups
---

*This is similar to the [Raid Levels](/RAID_0)* ## Cluster
*Clusters instances into a low-latency group in a single Avalibility
zone* ![Cluster Example](/static/cluster_instance_group_visual.png) -
Infra - Same **Rack**(*same hardwere*) - Same **AZ**(*avalibility zone*)
- Pros - **Greate network**(*10Gbps
[bandwith](/Network/Phisicall/bandwidth) between instances*)
- Cons - If the **rack fails, all instances fail.**

-   Use case:
    -   **Big Data Job** that need to complete fast
    -   App that needs extremely low
        [latency](/Network/Data/Latency) and high **network
        throughput**

## Spread

*Spreads instances across underlying hardwere (Max 7 instace per group
per AZ) #CriticalApps* ![Spread
Example](/static/spread_isnstance_group_visual.png)

-   Pros
    -   Can span accross **AZ**
    -   **Reduce simultaneous failure**
-   Cons
    -   Only 7 instances
-   Use Case
    -   Aplication that maximzie high avalibility
    -   Each instance has to be isolated form faileur from each other
        ### Can Operate on racks and hosts [Aws host
        outputs](/sysops_aws_cert/ec2_instances/aws_outposts)

## Partition

![Example](/static/partition_instance_group_visual.png) *Spreads accrros
many diffrent partiction (relay on diffrent sets of racks)* - Scales to
100 EC2 instaces per gorup (*Kafka,Cassandra*) - a partition failure can
affect many **EC2** but won’t affect otehr partitions - EC2 instance get
access to the **partition metadata** - Use cases  
- *Kafka, Cassandra*

------------------------------------------------------------------------

[Ec2instance](/sysops_aws_cert/ec2_instances/ec2_instance)
