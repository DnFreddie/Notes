---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: startup robotics
---

## Onion approach

### Motor

In order to stuart up the engeine u have to provide **Suppley Voltage**
- 12 Volt dc gear motr - 12 volt battery with a **switch**

#### Motor driver

-   Motors requiter a relativity ==high
    [voltage_rob](/voltage_rob)== and
    [current_rob](/current_rob) >\[!bug\]- Connecting them
    directly to processor by end up in
    fire >![Pasted_image_20231004133958.png](/static/Pasted_image_20231004133958.png)

-   Therefor we use motordirver

    -   It takes lots of voltage and uses this power supplay to an
        amplyfaier creating
        1.  Higier [voltage_rob](/voltage_rob)
        2.  Highier [current_rob](/current_rob) *To drive a
            motor*

-   It creates [PWM_rob](/PWM_rob) ### Motor controler It
    takes the PMW calculates it and send to console(*they can be
    combined*)

![controlesrs_rob](/controlesrs_rob)

> \[!tip\]- Why to separate motor controlers 1. Moduality (*easier to
> swap elements*) 2.Allocoation of compute resources

Common layer that tarehe speend and send instruction to the motor itslef

-   **Control softwere**
    -   Calcualte the speed that it want motor to go
    -   Transmit those speed using prtocol to the controler
        ![Pasted_image_20231005093118.png](/static/Pasted_image_20231005093118.png)

> \[!quote\]
