+++
title = 'Push gatway prometheus'
date = 2024-09-05T15:14:01+02:00
draft = false 
tags = ["prometheus"]
+++

## Constraints
- Monitoring multiple instances through a single Pushgateway creates both a **single point of failure** and a **potential bottleneck**.
- Loss of Prometheus automatic instance health via the `up` metric (generated on every scrape).
- The Pushgateway never forgets series pushed to it.
    - You have to delete them manually.

[Prom Docs](https://prometheus.io/docs/instrumenting/pushing/)
![Push gatway prometheus](/Notes/push_gatway_prometheus_visual.png)
