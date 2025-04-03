---
categories: logging
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Loki
tags:
- logging
---

[Project](https://github.com/grafana/loki-fundamentals/tree/what-is-loki)
- Accepts all formats but requires u to index a specific fields that you
would like to monitor - ![Loki
structure](/static/loki_struckter_visual.png)

# Deployment

-   *Loki configuration file*
-   *Docker img*
-   *collector*(to send the logs to the Loki)

# Data storage types

-   **index** Storing here `log levels` `source`
    -   faster rate
-   **Chunk**
    -   Container for the

------------------------------------------------------------------------

[journalctl](/journalctl)
