---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: PID control
---

## Proportional Integral Derivative Contorler

> \[!tip\]- Main schema
> ![Pasted_image_20231004151914.png](/static/Pasted_image_20231004151914.png)

-   This uses the past error present error and future error to calculate
    appropriate commands
-   Schema
    ![Pasted_image_20231004144626.png](/static/Pasted_image_20231004144626.png)

### PID contor

**Plant** is divided into - ==Acuateres== - *Generate the force to
change the system* - \[\[process\]\] - The thing taht **actuater** is
trying to influance

> \[!bug\]- Saturation wheh a system meets its limit
> ![SatrurationModel_visual.png](/static/SatrurationModel_visual.png)

![Integral windup](/Integral_windup)
