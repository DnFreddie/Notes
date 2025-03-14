---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Localizaiton time setup
---

-   Synchronizing the time with the rest of the world
    -   **NTPD**(*daemon*) Uses
        [NTP_protocol](/protocols/NTP_protocol)
-   **Crony** *for advanced synchronization* #sysd_util
-   **Timesync**
    -   It doesn’t have server component *very simplistic *

### Command

#sysd_util - **localctl**

``` bash
sudo localectl set-locale LANG: en_US.UTF-8
```

-   **timedatectl**
