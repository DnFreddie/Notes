+++
title = 'Ec2 instance'
date = 2024-08-23T09:25:54+02:00
draft = false
categories = ["aws"]
+++

*The defult user for aws is the `ec2-user`*
## Changing the type

### Amazon EBS-Optimized Instances 
Are set up to work really well with [Amazon Elastic Block Store]({{< ref "posts/sysops_aws_cert/EBS.md" >}}) (EBS)

[Aws Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)


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
 

### [Placements Groups]({{< ref "posts/sysops_aws_cert/ec2_instances/placement_groups.md" >}})
*Sometimes you wnat control over the instance placement strategy*
- During creation u can specyfie one of the strategies 
    - [Cluster]({{< ref "posts/sysops_aws_cert/ec2_instances/placement_groups.md#cluster" >}})
    - [Spread]({{< ref "posts/sysops_aws_cert/ec2_instances/placement_groups.md#spread" >}})
    - [Partition]({{< ref "posts/sysops_aws_cert/ec2_instances/placement_groups.md#partition" >}})

##  Shutdown Behavior 
*How shoud the instace reacte when shutdown is done*
- `Stop`(*default*)
- `Terminate`

AWSConsole Attribute: `InstanceInitiatedShutdownBehavior`
- *This attribute determines the behavior of the instance when it is shut down from within the operating system.*
- **Important Note**: 
  - You can only modify this attribute from **inside the instance**.
  - Exiting from the console does not affect this setting.
Here’s a revised version of your text regarding **Termination Protection**:


### Termination Protection
*This protection works only if u want to `terminate from console`or `CLI`*
![Termiantion protection visual](/Notes/aws_failed_terminal_protection_vsiual.png)
- **Overview**: If an instance has its shutdown behavior set to `terminate` and `termination protection` **is enabled**
    - Shutting down the instance from the **operating system** will still result in the instance being terminated.

- **Important Note**: This occurs because the shutdown action is **initiated from within the operating system**, rather than through the AWS Management Console.
## Trouble shoot 
### Error Types 
- `#InstanceLimitExeeded` 
    - Reached the max limit of the `vCPU` **per region**
    - On-Demand instance limits are set on a **per-region baisis**
        - By defult with  On-Demand ([*A,C,D,H,I,R,T,Z*]({{< ref "posts/sysops_aws_cert/ec2_instances/instance_families.md" >}})) instance types you'll have `64vCPUs`
    - Resolution: **Launch in diffrent region** or **request limit increase** in given region
       - U can find inormation is either to check `quota` or direcly the instacne limits or direcly the `instance limits`
- `#InsufficientInstacneCapicity` 
    - Aws does not have enough On-Demand capicity in the particular AZ 
        - Its the Aws issue so either wait change the Az resize or choose different type
- `#InstanceTerminatesImmediately`(**goes from pedning straight to terminated**)
    - Reached [EBS volume limit]({{< ref "posts/sysops_aws_cert/EBS.md" >}})
    - `EBS` snapshot is corrupt
    - The root `EBS` voulume is **encrypted** and u don't have permissions
    - Your missing a requierd part of configuration
    - **Resolution:** Check out the  **Description** inside the `EC2 console`


### SSH Vs Ec2 connector 
You **can't connect to the EC2 instance in the browser using your local IP address**. Instead, you need to:

[AWS Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect-tutorial.html#eic-tut1-task2)
1. Find the **`EC2_INSTANCE_CONNECT`** IP range for the specific region you are using.
2. Add this IP range to your allowed IP lists.




## Purchesing options 
