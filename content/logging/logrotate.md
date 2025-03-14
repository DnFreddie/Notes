---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: logrotate
---

## Automatically Cleaning Up Logs with logrotate

*At the end of each rotation period, the log files are renamed and
pushed toward the end of the chain of logs as a new log file is created,
replacing the current log file.*

For instance, /var/log.auth will become /var/log.auth.1, then
/var/log.auth.2, and so on

### Configure

[Docs](https://www.man7.org/linux/man-pages/man8/logrotate.8.html)

The config is located into **/etc/logrotate.conf**

> \[!example\]-
> ![LogareteConf_visual.png](/static/LogareteConf_visual.png)

### Removing logs

In order to remove files and do not leacve baisic evidance u have to
[shred](/logging/shred) the Logfiles

### Disable logs

To disable log u have to stop the [service](/Linux/service)
daemon service rsyslog stop

***!! REMEBER to delete the line weere th sys log was stopped!!***
