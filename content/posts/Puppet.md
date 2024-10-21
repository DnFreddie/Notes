---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Puppet
---

    - **Pull model**
    - Ruby based

-   Agent based
    -   Except **Puppet Bolt**
        -   *It’s a tool for routers and switches*
-   ***MOM*** master of masters
    -   Tool that controls *all the masters*

> \[!example\]-
> ![Pasted_image_20240508131449.png](/Notes/Pasted_image_20240508131449.png)

### Configuration

The main configuration is **Manifest.pp** - It has **classes** that are
build of *resources* - *Resources* are just
[service](/Notes/posts/Linux/service) like (*apache or docker*) - This
can be also setup further in module

> \[!example\]-
> ![Pasted_image_20240508132228.png](/Notes/Pasted_image_20240508132228.png)

------------------------------------------------------------------------

[vSwitch](/Notes/posts/Network/vitrual/vSwitch)
