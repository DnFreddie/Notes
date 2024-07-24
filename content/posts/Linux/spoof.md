+++
title = 'spoof'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Spoofing 
*Changing mac adress to appppear as a diffrent device*
U just need to make the hardwer down ([ifconfig](/Penetration/ifconfig.md))
and cahnge the mac adrees with hr 
>[!example]-
>kali >ifconfig eth0 down
kali >ifconfig eth0 hw ether 00:11:22:33:44:55
kali >ifconfig eth0 up



>[!quote] [ifconfig](/Penetration/ifconfig.md) [iwconfig](/Penetration/iwconfig.md)