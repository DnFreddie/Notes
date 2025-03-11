---
date: "2024-08-28T17:42:11+02:00"
draft: false
tags:
- ec2
title: Cloud watch for EC2 metrics
---

*Aws provided metrics (AWS pushes them)* - **Aws Provided Metrics** -
Metrics `CPU` `Network` `Disk` `Status check` - Baisic Monitoring
`default`metrics are collected **every 5 minutes** - Detaild Monitoring
`paid` metrics are collected **every 5 minutes** - **Custom metrics** -
Baisic Resolution 1 minute - High Resolution: all the way to 1 second -
inclued RAM, application metrics - make sure the IAM peromission on the
EC2 instance role are correct

### Inclueded Metrics

-   CPU: CPU Utilization + Credit Usage / Balance
-   Network: Network In / Out
-   Status Check
    -   Instance satus: check the EC2Vm
    -   System staus: check the underlying hardwer
-   Disk: Read/Write for Ops / Bytes (*only for instance store*)

![Cloudwatch Dashboard](/static/cloud_watch_metrics_dashboard_visual.png)
