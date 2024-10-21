---
categories:
- certs
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- Comptia Linux +
title: Comptia Objectives
---

*Overview of What You Need to Learn for CompTIA Linux+*

I highly recommend watching all the videos by [Shawn
Powers](https://www.youtube.com/watch?v:%20niPWk7tgD2Q&list=PL78ppT-_wOmuwT9idLvuoKOn6UYurFKCp).

Afterward, study from books and engage in hands-on projects or labs to
reinforce your learning.

[Offical
Objectives](https://partners.comptia.org/docs/default-source/resources/comptia-linux-xk0-005-exam-objectives-(1-0))

1.  **File system hierarchy**
2.  **Boot**
    -   [UEFI vs BIOS](/Notes/posts/UEFI_vs_BIOS)
    -   [Boot procces](/Notes/posts/boot_process)
    -   \[Partition types\]( {{\< ref
        “posts/UEFI_vs_BIOS.md#partition-types” >}})
        -   **Fiels systems**

![Files systmes](/Notes/filesSystem_visiual.png) - [GRUB
2](/Notes/posts/GRUB_2) - [Run
Levels](/Notes/posts/for_later/Run_Levels) 3. **Devices types in /dev**
- [Block vs character dev](/Notes/posts/Block_vs_character_dev) -
[Special character
devices](/Notes/posts/Block_vs_character_dev.md#special-character-devices)
- [Getting PCI dev info](/Notes/posts/Getting_PCI_dev_info) \>\[Raid
devices\]( {{\< ref “posts/RAID_STORAGE.md” \>}}) \>![Raid
devices](/Notes/raid_devices_canvas.png) - **Commands** - stat(*gives a
more detailed overview of the metadata*) - file 4. [Archive vs
Compress](/Notes/posts/Archive_vs_Compress) 5.
[Partitioning](/Notes/posts/Partitioning) - [Automatic Mounting
fstab](/Notes/posts/Automatic_Mounting_fstab) - [Disck
encryption](/Notes/posts/Dick_encryption) 1. [LVM](/Notes/posts/LVM) 2.
**Virtual Storage** \|—————–\|—————–\| \| ![Virtual Storage
1](/Notes/virtual_storage_visual.png) \| ![Virtual Storage
2](/Notes/virtual_storage_tech.png) \|

3.  [systemd](/Notes/posts/systemd)

-   [Cronetab](/Notes/posts/scriptss/Cronetab)
-   [At](/Notes/posts/scriptss/At)
-   [Systemd Timers](/Notes/posts/systemd#systemd-timers)

5.  Process management ![Process
    mangament_signals](/Notes/process_menagment_visual.png)

    -   [systemd procedures](/Notes/posts/systemd.md#systemd-procedures)

6.  **Network**

    -   [DNS](/Notes/posts/Network/Phisicall/DNS)
        -   [nsswitch.conf](/Notes/posts/nsswitch.conf)
        -   [Changing DNS
            server](/Notes/posts//posts/Network/Phisicall/DNS.md#changing-dns-server)
        -   [nslookup](/Notes/posts/Linux/nslookup)
    -   **tcpdump**
    -   **whireshark**

7.  [Repository Configuration](/Notes/posts/Repository_Configuration)

8.  [Kernel
    Options](/Notes/posts//posts/Linux/Kernel/Kernel.md#kernel-options)

9.  [Localizaiton time setup](/Notes/posts/Localizaiton_time_setup) ##
    Security

10. **Encryption**

    -   **Hash vs Encryption vs digital signature** ![Hash vs Encryption
        vs digital
        signature](/Notes/hash_encryption_vs_digital_siginture.png)

    -   [encrypted Web traffic](/Notes/posts/encrypted_Web_traffic)

11. **System Auth** ![System Auth](/Notes/system_auth_visual.png)

12. [Permissions](/Notes/posts/Linux/Permissions)

    1.  [umask](/Notes/posts/Linux/umask)

13. **Logging** ![Logging canvas](/Notes/logs_canvas_visual.png)

14. [SELinux](/Notes/posts/SELinux)

15. [AppArmor](/Notes/posts/AppArmor) ### Sys amdimistrations

16. **User manipulation**

    -   [profile_etc](/Notes/posts/Linux/etc/profile_etc)
    -   [skel_etc](/Notes/posts/Linux/etc/skel_etc)

    2.  **Commands**

    -   [chage](/Notes/posts/chage)

    1.  **Sudo and visudo**
    2.  [pkexec](/Notes/posts/pkexec)
    3.  [getfacl](/Notes/posts/getfacl) ### Cloud

17. [git](/Notes/posts/git)

18. [docker](/Notes/posts/Linux/Docker/docker)

19. **Automation tools** ![Automation
    tools](/Notes/automaiton_tools_canvas.png) ### Troubleshooting #####
    Io issues

20. **High latency** Input/output (I/O) wait Low throughput Input/output
    operations per second (IOP) Low IOPS

    -   Consider diffrent **Files system**
    -   check for wa with top
    -   [ioStat](/Notes/posts/ioStat)

21. [inodes exhaustion](/Notes/posts/inodes_exhaustion)

22. [IO schedulers](/Notes/posts/IO_schedulers)

23. [NVMe](/Notes/posts/NVMe)

24. **File system isssues**(*coruption missmatch*)

    1.  [fsck](/Notes/posts/Linux/fsck)

25. **vstat**

26. [Io
    summery](https://www.site24x7.com/learn/linux/disk-io-troubleshooting.html)
    #### Network torubleshooting

-   Checking [subnet
    mask](/Notes/posts/Network/basic_network_connections/subnet_mask)
    and **routing**
-   [iptables](/Notes/posts/iptables) ##### Droped packett
-   [ip_command](/Notes/posts/ip_command)
-   Links (*the name of the network devices*)
    -   ***ip -h -s link show device***

##### Dns issues

-   [nslookup](/Notes/posts/Linux/nslookup)
-   [dig_command](/Notes/posts/dig_command)
-   [ping_command](/Notes/posts/ping_command) #### Network Resonance
    [nmap](/Notes/posts/Linux/nmap) openssl client
-   to check weather the connection is legit

### Cpu issues

-   [Load Average](/Notes/posts/Load_Average)
-   [Cpu times](/Notes/posts/Linux/Kernel/Cpu)(*Subdevisions*)
-   [Cpu](/Notes/posts/Linux/Kernel/Cpu)
-   [Cpu procces
    priotities](/Notes/posts/Linux/Kernel/Cpu.md#cpu-process-priorities)
    -   [OOM process Killer](/Notes/posts/OOM_process_Killer)

[Swap memory](/Notes/posts/Swap_memory)

#### Hardwere

-   *lscpu*
-   *lsmemm*
-   ***/proc/cpuinfo***
-   ***/proc/meminfo***

### User issue

-   [Logging torubleshooting](/Notes/posts/Login_troubleshooting)
-   [quota](/Notes/posts/quota)

### Systemd

-   [Systemd Units](/Notes/posts/systemd#systemd-units)
-   [Systemd Ordering](/Notes/posts/systemd_ordering)
-   [Systemd Timers](/Notes/posts/systemd#systemd-timers)

------------------------------------------------------------------------
