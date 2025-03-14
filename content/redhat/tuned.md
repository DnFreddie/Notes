---
title: 'Tuned'
date : 2025-01-06T22:48:44+01:00
draft: false
---
## The Dynamic System Tuning Daemon
Designed to dynamically adjust system settings to optimize performance and power usage for specific workloads.
It is part of the tuned package and is often used in enterprise distributions like **Fedora, Rocky Linux, and RHEL.**


> Check the current  Profile
```bash
tuned-adm active
# Output:
# balanced
```

> Check the recomended profile
```bash
tuned-adm recommended
# Output:
# balanced
```




### Common Tuning Profiles

*  `balanced`: A general-purpose profile that balances performance and power consumption.
*  `performance`: Maximizes system performance.
*  `powersave`: Reduces power consumption, often at the cost of performance.
*  `virtual-guest:` Optimizes the system for running as a virtual machine guest.
*  `virtual-host:` Optimizes the system for hosting virtual machines.



