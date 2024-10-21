---
date: "2024-08-27T12:45:29+02:00"
draft: false
tags:
- ec2
title: Spot fleets
---

*Allows to automaticly reqest spot instances with the lowest price*

Set of [Spot
Instance](/Notes/posts/sysops_aws_cert/ec2_instances/ec2_purches_options.md#spot-instances)
+
[On-demand](/Notes/posts/sysops_aws_cert/ec2_instances/ec2_purches_options.md#on-demand)(*optional*)
- The Spot Fleet will try to meet the tartget capacity with the price
constrains - Define possible lauhch pools *(instance,type OS, AZ)* - Can
have multiple lauhhc pools so the the fellt can choose - Spot Fleet
stops lauchning isntances when reacheing capoacity or max cost

-   **Strategies**
    -   `lowestPrice`
        -   from the pool with the lowest price (*cost optimatizaiotin,
            shork worklaod*)
    -   `diversified`
        -   distribiuted accros all pools (*great availibility,long
            workloads*)
    -   `capacityOptimized`
        -   pool with the optimal capacit for the number of instances
    -   `priceCapacityOptimized`(**recommended**)
        -   pools with the **highest capcaity avaialble**
            -   then select the pools wiht the lowest price
