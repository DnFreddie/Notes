---
date: "2024-08-25T15:25:25+02:00"
draft: false
tags:
  - ec2
title: EC2 Purchasing Options
---

## EC2 Purchasing Options

| Pricing Model | Workload Type | Payment Structure | Discounts Available | Commitment Period |
|--------------|--------------|-------------------|---------------------|-------------------|
| [On-Demand](#on-demand) | Short workloads | Pay by the second | None | None |
| [Reserved](#reserved) | Long workloads | No Upfront, Partial, All Upfront | Up to 72% | 1 or 3 years |
| [Convertible Reserved Instances](#convertible-reserved-instances) | Long workloads | Flexible | Up to 66% | 1 or 3 years |
| [Savings Plans](#savings-plans) | Long workloads | Based on usage | Up to 72% | 1 or 3 years |
| [Spot Instances](#spot-instances) | Short workloads | Pay as per spot price | Up to 90% | None |
| [Dedicated Hosts](#dedicated-hosts) | Full server usage | On-Demand or Reserved | None | None |
| [Dedicated Instances](#dedicated-instances) | Dedicated hardware | N/A | None | None |
| [Capacity Reservations](#capacity-reservations) | Reserved capacity | Pay for reserved capacity | None | None |

---

## On-Demand

Short workload, **pay by the second.**

### Characteristics:
- Linux or Windows
  - Billing per second
  - Other OSes billing per hour
- High cost, no upfront payment
- No long-term commitment

---

## Reserved

*Recommended for **steady-state usage** applications (e.g., databases). Best for long workloads (1 & 3 years).*

### Characteristics:
- You reserve specific instance attributes (Instance Type, Region, Tenancy, OS)
- Reserved Instances Scope:
  - **Regional** or **Zonal** (reserve capacity in an AZ)
- You can buy or sell in the [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-concepts-buying.html#ri-market-buying-guide)
- Reservation Period: 
  - **1 year** (discount)
  - **3 years** (greater discount)
- Up to **72%** discount compared to On-Demand
- Payment Options:
  - No Upfront
  - Partial Upfront
  - All Upfront

---

## Convertible Reserved Instances

*Long workloads with flexible instance configurations.*  
- Can change the EC2 instance [OS family](/sysops_aws_cert/ec2_instances/instance_families), scope, and tenancy  
- Up to **66%** discount compared to On-Demand

---

## Savings Plans

- Commit to usage in advance for **1 or 3 years**  
- Provides discounts for **consistent usage**

### Characteristics:
- Discount based on long-term usage (up to **72%**)
- Commit to a **specific level of spending** ($10/hour for 1 or 3 years)
- Any usage beyond the committed amount is billed at the On-Demand price
- Locked to a specific:
  - [Instance family](/sysops_aws_cert/ec2_instances/instance_families)
  - AWS region
- Flexible across:
  - Instance size
  - OS
  - Tenancy (*Host, Dedicated, Default*)

---

## Spot Instances

*Instances that can be lost if the max price is less than the current spot price.*

[Learn more about Spot Instance mechanisms](/sysops_aws_cert/ec2_instances/spot_instance_mechanism).

### Characteristics:
- Short workloads
- **Very cheap** (up to **90% discount** compared to On-Demand)
- **Less reliable** (instances can be interrupted)
- Best for **workloads that are fault-tolerant**, such as:
  - Distributed workloads
  - Jobs with a flexible start and end time

---

## Dedicated Hosts

*Book an entire physical server dedicated to your use.*

### Characteristics:
- Full EC2 server capacity dedicated to you
- **Control instance placements**
- Payment options:
  - **On-Demand**
  - **Reserved**
- Related AWS service: [AWS Outposts](/sysops_aws_cert/ec2_instances/aws_outposts)

---

## Dedicated Instances

*Instances that run on hardware dedicated to a single customer, but not an entire server.*

### Characteristics:
- The physical server is **not fully dedicated to you**, but the instances are

---

## Capacity Reservations

*Reserve On-Demand instance capacity in a specific AZ for any duration.*

### Characteristics:
- Guarantees **EC2 capacity availability** whenever needed
- No long-term commitment (can **create/cancel any time**)
- No billing discount (**regular On-Demand pricing**)
- Can be combined with **Regional Reserved Instances** and **Savings Plans** for billing discounts
- Good for **short-term uninterrupted workloads** that must run in a specific **Availability Zone (AZ)**


