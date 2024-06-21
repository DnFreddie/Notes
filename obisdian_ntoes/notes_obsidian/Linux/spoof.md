---
date:: 01 04 2023
topic:: network-penetration
type:: Linux
---
## Spoofing 
*Changing mac adress to appppear as a diffrent device*
U just need to make the hardwer down ([ifconfig](/obisdian_ntoes/notes_obsidian/Penetration/ifconfig.md))
and cahnge the mac adrees with hr 
>[!example]-
>kali >ifconfig eth0 down
kali >ifconfig eth0 hw ether 00:11:22:33:44:55
kali >ifconfig eth0 up



>[!quote] [ifconfig](/obisdian_ntoes/notes_obsidian/Penetration/ifconfig.md) [iwconfig](/obisdian_ntoes/notes_obsidian/Penetration/iwconfig.md)