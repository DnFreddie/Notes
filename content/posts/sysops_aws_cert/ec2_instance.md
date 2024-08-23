+++
title = 'Ec2 instance'
date = 2024-08-23T09:25:54+02:00
draft = false
categories = ["aws"]
+++


*The defult user for aws is the `ec2-user`*



## Changing the type

### Amazon EBS-Optimized Instances 
Are set up to work really well with `Amazon Elastic Block Store` [EBS]({{< ref "posts/sysops_aws_cert/EBS.md" >}})

[Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)


## Enhanced Networking 

### EC2 Enhanced Networking (SR-IOV)
*Works for newer generation EC2 Instances* 
- Benefits
    - Higher [bandwith]({{< ref "posts/Network/Phisicall/bandwidth.md" >}})
    - Higher **PPS**(*packet per second*)
    - Lower [latency]({{< ref "posts/Network/Data/Latency.md" >}})

- Options
    - `Elastic Network Adapter (ENA)` 
        - Up to **100Gbps**
    - `Intel VF`
        - Up to **10Gps** *LEGACY!*


```bash 
# To check weather this mode is present 
modinfo ena 
# Then check what dirver the eth iterface is using 
ethtool -i eht0 
```

###  Elastic Fabric Adapter(EFA)
*Great for high-performence compiuting(HPC)*
- Improved `ENA` for **HPC**, only works with **Linux**
- Great for  inter-node communication ,**thightly copuled worklods #kubernetes**
    - Message Passing Interface ([MPI](https://en.wikipedia.org/wiki/Message_Passing_Interface)) standard
- Bypasses the underlying Linux Os 
    - **low-latency**
    - **relaibe transport**
 

### [Placements Groups]({{< ref "posts/sysops_aws_cert/placement_groups.md" >}})
*Sometimes you wnat control over the instance placement strategy*
- During creation u can specyfie one of the strategies 
    - [Cluster]({{< ref "posts/sysops_aws_cert/placement_groups.md#cluster" >}})
    - [Spread]({{< ref "posts/sysops_aws_cert/placement_groups.md#spread" >}})
    - [Partition]({{< ref "posts/sysops_aws_cert/placement_groups.md#partition" >}})

