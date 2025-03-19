---
categories:
- certs
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- Comptia Linux +
title: Comptia Objectives
---

# Overview of What You Need to Learn for CompTIA Linux+

I highly recommend watching all the videos by [Shawn Powers](https://www.youtube.com/watch?v:%20niPWk7tgD2Q&list=PL78ppT-_wOmuwT9idLvuoKOn6UYurFKCp).

Afterward, study from books and engage in hands-on projects or labs to reinforce your learning.

[Official Objectives](https://partners.comptia.org/docs/default-source/resources/comptia-linux-xk0-005-exam-objectives-(1-0))

1. **File system hierarchy**
2. **Boot**
   - [UEFI vs BIOS](/UEFI_vs_BIOS)
   - [Boot process](/boot_process)
   - [Partition types](/UEFI_vs_BIOS#partition-types)
   - **File systems**

   ![Files systems](/static/filesSystem_visual.png) 
   - [GRUB 2](/GRUB_2) 
   - [Run Levels](/for_later/Run_Levels)

3. **Device types in /dev**
   - [Block vs character devices](/Block_vs_character_dev)
   - [Special character devices](/Block_vs_character_dev#special-character-devices)
   - [Getting PCI device info](/Getting_PCI_dev_info)
   - [RAID devices](/RAID_STORAGE)

   ![RAID devices](/static/raid_devices_canvas.png) 

   - **Commands**
     - `stat` (gives a more detailed overview of the metadata)
     - `file`

4. [Archive vs Compress](/Archive_vs_Compress)

5. [Partitioning](/Partitioning) 
   - [Automatic Mounting fstab](/Automatic_Mounting_fstab) 
   - [Disk encryption](/Disk_encryption) 
   - [LVM](/LVM) 

6. **Virtual Storage**

   ![Virtual Storage 1](/static/virtual_storage_visual.png) ![Virtual Storage 2](/static/virtual_storage_tech.png)

7. [systemd](/systemd)
   - [Crontab](/scriptss/Crontab) 
   - [At](/scriptss/At) 
   - [Systemd Timers](/systemd#systemd-timers)

8. **Process management**

   ![Process management_signals](/static/process_management_visual.png) 
   - [systemd procedures](/systemd#systemd-procedures)

9. **Network**
   - [DNS](/Network/Physical/DNS)
   - [nsswitch.conf](/nsswitch.conf)
   - [Changing DNS server](/Network/Physical/DNS#changing-dns-server)
   - [nslookup](/Linux/nslookup)
   - **tcpdump**
   - **Wireshark**

10. [Repository Configuration](/Repository_Configuration)

11. [Kernel Options](/Linux/Kernel/Kernel#kernel-options)

12. [Localization time setup](/Localization_time_setup)

### Security

13. **Encryption**
   - **Hash vs Encryption vs Digital Signature**

     ![Hash vs Encryption vs Digital Signature](/static/hash_encryption_vs_digital_signature.png) 

   - [Encrypted Web traffic](/encrypted_Web_traffic)

14. **System Auth**

    ![System Auth](/static/system_auth_visual.png)

15. [Permissions](/Linux/Permissions)
    - [umask](/Linux/umask)

16. **Logging**

    ![Logging canvas](/static/logs_canvas_visual.png)

17. [SELinux](/SELinux)

18. [AppArmor](/AppArmor)

### System Administration

19. **User manipulation**
    - [profile etc](/Linux/etc/profile_etc) 
    - [skel etc](/Linux/etc/skel_etc)

    - **Commands**
      - [chage](/chage)

    - **Sudo and visudo**
    - [pkexec](/pkexec)
    - [getfacl](/getfacl)

### Cloud

20. [git](/git)

21. [docker](/Linux/Docker/docker)

22. **Automation tools**

    ![Automation tools](/static/automation_tools_canvas.png)

### Troubleshooting

#### I/O issues

23. **High latency**
    - Input/output (I/O) wait
    - Low throughput
    - Input/output operations per second (IOPS)
    - Low IOPS

    - Consider different **File systems**
    - Check for wa with `top`
    - [ioStat](/ioStat)

24. [inodes exhaustion](/inodes_exhaustion)

25. [IO schedulers](/IO_schedulers)

26. [NVMe](/NVMe)

27. **File system issues** (*corruption mismatch*)
    - [fsck](/Linux/fsck)

28. **vstat**

29. [I/O summary](https://www.site24x7.com/learn/linux/disk-io-troubleshooting.html)

#### Network troubleshooting

- Checking [subnet mask](/Network/basic_network_connections/subnet_mask) and **routing**
- [iptables](/iptables)

##### Dropped packets

- [ip command](/ip_command)
- Links (*the name of the network devices*)
  - **`ip -h -s link show device`**

##### DNS issues

- [nslookup](/Linux/nslookup)
- [dig command](/dig_command)
- [ping command](/ping_command)

#### Network Resonance

- [nmap](/Linux/nmap)
- `openssl client` to check whether the connection is legit

### CPU issues

- [Load Average](/Load_Average)
- [CPU times](/Linux/Kernel/Cpu) (*Subdivisions*)
- [CPU](/Linux/Kernel/Cpu)
- [CPU process priorities](/Linux/Kernel/Cpu#cpu-process-priorities)
  - [OOM process Killer](/OOM_process_Killer)

- [Swap memory](/Swap_memory)

#### Hardware

- `lscpu`
- `lsmem`
- ***/proc/cpuinfo***
- ***/proc/meminfo***

### User issues

- [Logging troubleshooting](/Login_troubleshooting)
- [quota](/quota)

### Systemd

- [Systemd Units](/systemd#systemd-units)
- [Systemd Ordering](/systemd_ordering)
- [Systemd Timers](/systemd#systemd-timers)

---
