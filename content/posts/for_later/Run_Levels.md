---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Run Levels
---

## Run levels

Run it with sudo **init** run level (*this are called init scripts*)

> \[!Note\] Does not work for [sysctl](/Notes/posts/for_later/sysctl)

-   **0** Halt the system
-   **1** Single user/minimal mode
-   **2 - 5** Multiuser (*gui mode*)
-   **6** Reboot the system
    -   U can set the change the behaviors of it in */etc/iniittab*
        <mark style="background: #FF5582A6;">its dangerous</mark>

> \[!example\]
> ![Pasted_image_20240426141511.png](/Notes/Pasted_image_20240426141511.png)

> \[!quote\] [Cronetab](/Notes/posts/scriptss/Cronetab) \|
> [Kernel](/Notes/posts/Linux/Kernel/Kernel) \| [rc
> scripts](/Notes/posts/for_later/rc_scripts)
