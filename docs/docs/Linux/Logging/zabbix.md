---
title: "zabbix"
date: 2025-04-03T22:40:21+02:00
draft: false
tags:
- logging
---

## Zabbix Dashboard features

### Dashboard widgets


#### Action log
[Docs](https://www.zabbix.com/documentation/current/en/manual/web_interface/frontend_sections/dashboards/widgets/action_log)
*When zabbix  does anything from the list it's called an action* and it's
stored  in the `action log`

* Notification *(mails, SMS messages, or other types of alerts)*
* Remote commands *(running scripts, restarting services)*
* Automatic actions
    * if Zabbix has automatically scaled up resources, shut down a server, or triggered a backup process, these would be logged.
* Manual actions *(commands triggered by the zabbix interface)*

#### Default discovery

* Shows `Active Network` Discovery Rules:
    * Network discovery rules are configurations that determine how a system identifies and interacts with devices on a network.
        * The number of rules currently in effect.
        * Any alerts or notifications related to the rules.
        * Performance metrics or statistics related to network discovery.
[docs](https://www.zabbix.com/documentation/current/en/manual/web_interface/frontend_sections/dashboards/widgets/discovery_status)
#### Honeycomb
The honeycomb widget offers a dynamic overview of the monitored network infrastructure and resources, where host groups, such as virtual machines and network devices, along with their respective items, are visually represented as interactive hexagonal cells.
[Docs](https://www.zabbix.com/documentation/current/en/manual/web_interface/frontend_sections/dashboards/widgets/honeycomb)
![Honeycomb example](/static/honeycomb_zabbix_visual.png)
