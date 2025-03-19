---
date: "2024-08-27T12:16:58+02:00"
draft: false
tag:
- ec2
title: Spot instance mechanism
---

### Spot Pricing Guidelines

1.  **Define Max Spot Price**  
    Set a maximum spot price and acquire the instance while the current
    spot price is less than your defined maximum.

    -   The hourly spot price varies based on demand and capacity.
    -   If the current spot price exceeds your maximum price, you have
        the option to either stop or terminate the instance.
        -   **Grace Period:** 2 minutes.

> This show weather the price rises above the max jprice that we defined
> ![Pricing](/static/spot-instance-pricing-history_visual.png)

### [Spot Fleets](/sysops_aws_cert/ec2_instances/spot_fleets)

*The Spot Fleet will try to meet the tartget capacity with the price
constrains*

### Spot Block (No Longer Supported)

-   **Block Spot Instance**  
    You can block a spot instance during a specified time frame of up to
    **6 hours** without interruptions.

    -   In rare situations, the instance may be reclaimed.

### Terminating spot instance

*Aws wont termiante the spot instance u have to do it mannualy* \>![Note
isntance termination graph](/static/spot_instance_termination_visual.png)
- You can only cance Spot instance request ath are `open`, `active` or
`disabled`. 1. Cancel the **Spot Reuqest** 2. Terminatne the assosciated
Spot instnaces

------------------------------------------------------------------------

> **BUG:** If you were to do it **the other way around**, the **spot
> request will spawn it again**.

------------------------------------------------------------------------

-   [Purches
    options](/sysops_aws_cert/ec2_instances/ec2_purches_options)
-   [ec2](/sysops_aws_cert/ec2_instances/ec2_instance)
