---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: App Armor
---

*Define on every **program** what it’s allows to access*

### Profiles

#etc There are located in */etc/apparmor.d*

-   U can create profile for each **binary**
    -   It’s the path to it ex *usr.bin.man*
    -   replace */* with *.*

#### Overwriting Profile

Create the profile file *etc/apparmmor.d/local*

> Bug!
>
> Can’t overide **deny** with the **local allow** u have to change the
> profile then

### Modes

``` bash
aa-status
```

-   **Enforced** It works and stops programs
-   **Complain** Only logs
-   **Disabled**

#### Create profile based on logs

``` bash
sudo aa-logprof
```

> Example
> ![Pasted_image_20240507121744.png](/static/Pasted_image_20240507121744.png)

------------------------------------------------------------------------

[Docs](https://www.youtube.com/watch?v:%20XP-N22hjijo&list=PL78ppT-_wOmuwT9idLvuoKOn6UYurFKCp&index=39)

[SELinux](/SELinux)
