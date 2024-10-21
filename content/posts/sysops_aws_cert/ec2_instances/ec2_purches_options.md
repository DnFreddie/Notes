---
date: "2024-08-25T15:25:25+02:00"
draft: false
tags:
- ec2
title: Ec2 purchasing options
---

|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| \| Pricing Model \| Workload Type \| Payment Structure \| Discounts Available \| Commitment Period \| \|——————————\|———————–\|———————————-\|———————\|——————-\| \| [On-Demand](#on-demand) \| Short workloads \| Pay by the second \| None \| None \|I \| [Reserved](#reserved) \| Long workloads \| No Upfront, Partial, All Upfront\| Up to 72% \| 1 or 3 years \| \| [Convertible Reserved Instances](#convertible-reserved-instances) \| Long workloads \| Flexible \| Up to 66% \| 1 or 3 years \| \| [Savings Plans](#savings-plans) \| Long workloads \| Based on usage \| Up to 72% \| 1 or 3 years \| \| [Spot Instances](#spot-instances) \| Short workloads \| Pay as per spot price \| Up to 90% \| None \| \| [Dedicated Hosts](#dedicated-hosts) \| Full server usage \| On-demand or Reserved \| None \| None \| \| [Dedicated instances](#dedicated-instances) \| Dedicated hardware \| N/A \| None \| None \| \| [Capacity Reservations](#capacity-reservations) \| Reserved capacity \| Pay for reserved capacity \| None \| None \| |

### On-Demand

*Short workload, **pay by the second.***

#### Characteristics

-   Linux or Windows
    -   Billing per second
    -   Other OSes billing per hour
-   High cost, no upfront payment
-   No long-term commitment

### Reserved

*Recommended for the **steady-state usage** application (databases)* -
Long workloads (*1 & 3 years*)

#### Characteristics

-   You reserve specific instance attributes (Instance Type, Region,
    Tenancy, OS)
-   Reserved Instances Scope - Regional Zonal (reverse capacity in an
    AZ)
-   You can buy or sell in the [Reserved Instance
    Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-concepts-buying.html#ri-market-buying-guide)
-   Reservation Period: 1 year (+discount) or 3 years (+++ discount)
-   Up to 72% discount compared to On-Demand
-   Payment Options
    -   No Upfront
    -   Partial Upfront
    -   All Upfront

### Convertible Reserved Instances

*Long workloads with flexible instances* - Can change the EC2 instance
[OS
family](/Notes/posts/sysops_aws_cert/ec2_instances/instance_families)
scope and tenancy - Up to **66%** discount

### Savings Plans

-   Decide in advance how many resources you are going to use
-   Long workloads (*1 & 3 years*)

#### Characteristics

-   Get a discount based on long-term usage (up to 72%)
-   Commit to a certain type of usage ($10/hour for 1 or 3 years)
-   Usage beyond EC2 Saving Plan is billed at the On-Demand price
-   Locked to a specific [instance
    family](/Notes/posts/sysops_aws_cert/ec2_instances/instance_families)
    and AWS region
-   Flexible across
    -   Instance size
    -   OS
    -   Tenancy (*Host, Dedicated, Default*)

### Spot Instances

*Instances that get lost if the **max price is less than the current
spot price***

[Spot instance
mechanism](/Notes/posts/sysops_aws_cert/ec2_instances/spot_instance_mechanism)
- Short workloads - Cheap - Can lose instances (*less reliable*)

#### Characteristics

-   Can get a discount of up to 90% compared to On-Demand
-   **For workloads resistant to failure**
    -   Any distributed workloads
    -   Workloads with a flexible start and end time

### Dedicated Hosts

*Book an entire physical server.* - A server with EC2 capacity fully
dedicated to your use - Control instance placements - Payment options -
On-Demand - Reserved [AWS
Outposts](/Notes/posts/sysops_aws_cert/ec2_instances/aws_outposts)

### Dedicated Instances

*Instances on the hardware that are dedicated to you (not an entire
server)*

### Capacity Reservations

*You can be sure that the instances will be available for use; however,
if you choose not to utilize them, you will still pay for them.* -
Reserve On-Demand instances capacity in a specific AZ for any duration -
You always have access to EC2 capacity when you need it - **No time
commitment** (*create/cancel any time*) no billing discount - Combine
with the Regional Reserved Instances and Savings Plan to benefit from
billing discounts - Good for short-term uninterrupted workloads that
need to be in a specific AZ
