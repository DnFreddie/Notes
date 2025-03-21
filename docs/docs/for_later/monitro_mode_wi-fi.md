---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: monitro mode_wi-fi
---

## Monitor mode

In monitor mode, a Wi-Fi adapter can passively listen to all the
wireless traffic on a specific channel without actually connecting to
any network. This mode is useful for tasks such as network analysis,
packet sniffing, and intrusion detection.

*U can access all the wireless traffic passing by you within the range
of your wireless network adapter and antenna (standard is about 300–500
feet)*

## Activation

<mark style="background: #72083D;">Thsi will rename ure
[WLAN](/Network/Network_Types/WLAN) </mark> example:
**wlan0mon** - Formula - *airmon-ng start\|stop\|restart interface* -
airmon-ng start wlan

## Air Dump

**The airodump-ng** command captures and displays the key data from
broadcasting APs and any clients connected to thoseAPs or within the
vicinity. **Syntax** *Plug in airdump-ng, followed by the interface
nameyou got from runningairmon-ng just now.*

| Short  | Type of information                                                                                  |
|--------|------------------------------------------------------------------------------------------------------|
| BSSID  | The \[\[MAC Adress\]\] of the [access point](/Network/Ref_OSI/access_point)of the client |
| PWRC   | The strenght of the signal                                                                           |
| ENC    | The encryption                                                                                       |
| # Data | The data throughput rate                                                                             |
| Ch     | The chanell the [access point](/Network/Ref_OSI/access_point) is opereting on            |
| ESSID  | The name of the [access point](/Network/Ref_OSI/access_point)                            |

> \[!quote\]
