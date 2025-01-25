---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Partitioning
---

## Commands - **blkid** list all the devices that are *being in used*
currently - **lbsk** list **block devices** - *-e* to exclude things
like snap - **lsscsi** It displays a list of SCSI devices connected to
the system, (such as disk, **CD/DVD** drive, or **tape drive**) -
**fdisk** tool to partiont - **fcstat** Show the **fiber** connected
devices - **resize2fs** to resize the partiton(*without arguments it
fills up the entire partion*)

> \[!bug\] Remeber to **partprobe** after changenig to let kernel
> veryfie

### Chaking the size of the diskck and fles

-   **df**
-   **du**


###  Partitioning process 

> Inform operating system that the new partiotion where created 

```bash
partprobe

```
## Wipefs
[Docs](https://linuxconfig.org/wipefs-linux-command-tutorial-with-examples)

> [The leftower patition issues](https://unix.stackexchange.com/questions/680801/pvcreate-cant-use-dev-sda-device-is-partitioned)
```bash 
# This only shows what partiontabels are left on the block devcie
sudo wipefs /dev/sda
# Output: 
# DEVICE OFFSET TYPE UUID LABEL
# sda    0x1fe  dos
# ------------------------------ 
# This wipes of the remaining partitions
sudo wipefs /dev/sda -a
```



