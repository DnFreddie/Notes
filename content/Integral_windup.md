---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Integral windup
---

### Integral windup

-   Theres a huge problem with reducing the error later
    -   It builds staedli and then **satuarte the distance** >\[!tip\]-
        imagine a drone >When u holding it the error is rising since it
        canot achive the desiersed hight >The enging increase there
        power >When u lwt it go the speed is to high and so the error
        that it canot steadl achive the desierd hight

==Methods to fix it==

#### Clamping

Turning the **integrator off** Baislcy we set up a given error if the
error meets its limit must we do not increase It instead we steadly
incerase the speed to the point that we can overcome the obstacle (*if
we reach the max limit we migh consider a slow down lets say or
stoping*) we slow down the speed so we dont overshoult those 20 km per
hour - rember about the non perfect sesnr - Think about the dynaimc
error

![Clamping_Diagram_visual.png](/static/Clamping_Diagram_visual.png)

> \[!example\]-
> ![ClampingMechanismGraph_visual.png](/static/ClampingMechanismGraph_visual.png)
