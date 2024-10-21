---
date: "2024-09-06T14:45:18+02:00"
draft: false
tags:
- prometheus
title: Alert manager
---

*Alert Menager is confgiured via cmd-flags and configuration file*

### Configuration options

[Docs Alert menager
configuration](https://prometheus.io/docs/alerting/latest/configuration/)
- **Routing** - Where to send alerts - Aggregation of alerts -
Trhothiling of alerts - Muting of alerts - **Inhibition settings** -
Mutes other alers when an alert matches other machines - **Label
matchers** - Alerts to route - Silencers - Inhibition rules `amtool` can
act as a **linter** and verify configuration is correct

### Alerting baisics

-   Must use camelCase
-   Severity should be using a labeld called serverity
    -   Critical-**Routed** (*imidiete action*)
    -   Warning-**Routed**
    -   Info-**NotRouted**
-   Shoud have this annotations
    -   Summery(*mandatory*) alert anem
    -   Descirpotion (*mandatory*) detailed descreption of an alert ###
        When to alert people [Slis Slas
        Slos](/Notes/posts/prometheus/slos_slas_slis)

------------------------------------------------------------------------

-   [prometheus](/Notes/posts/prometheus/prometheus_main)
