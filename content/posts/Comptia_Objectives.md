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
   - [UEFI vs BIOS](/Notes/posts/UEFI_vs_BIOS)
   - [Boot process](/Notes/posts/boot_process)
   - [Partition types](/Notes/posts/UEFI_vs_BIOS#partition-types)
   - **File systems**

   ![Files systems](/Notes/filesSystem_visual.png) 
   - [GRUB 2](/Notes/posts/GRUB_2) 
   - [Run Levels](/Notes/posts/for_later/Run_Levels)

3. **Device types in /dev**
   - [Block vs character devices](/Notes/posts/Block_vs_character_dev)
   - [Special character devices](/Notes/posts/Block_vs_character_dev#special-character-devices)
   - [Getting PCI device info](/Notes/posts/Getting_PCI_dev_info)
   - [RAID devices](/Notes/posts/RAID_STORAGE)

   ![RAID devices](/Notes/raid_devices_canvas.png) 

   - **Commands**
     - `stat` (gives a more detailed overview of the metadata)
     - `file`

4. [Archive vs Compress](/Notes/posts/Archive_vs_Compress)

5. [Partitioning](/Notes/posts/Partitioning) 
   - [Automatic Mounting fstab](/Notes/posts/Automatic_Mounting_fstab) 
   - [Disk encryption](/Notes/posts/Disk_encryption) 
   - [LVM](/Notes/posts/LVM) 

6. **Virtual Storage**

   ![Virtual Storage 1](/Notes/virtual_storage_visual.png) ![Virtual Storage 2](/Notes/virtual_storage_tech.png)

7. [systemd](/Notes/posts/systemd)
   - [Crontab](/Notes/posts/scriptss/Crontab) 
   - [At](/Notes/posts/scriptss/At) 
   - [Systemd Timers](/Notes/posts/systemd#systemd-timers)

8. **Process management**

   ![Process management_signals](/Notes/process_management_visual.png) 
   - [systemd procedures](/Notes/posts/systemd#systemd-procedures)

9. **Network**
   - [DNS](/Notes/posts/Network/Physical/DNS)
   - [nsswitch.conf](/Notes/posts/nsswitch.conf)
   - [Changing DNS server](/Notes/posts/Network/Physical/DNS#changing-dns-server)
   - [nslookup](/Notes/posts/Linux/nslookup)
   - **tcpdump**
   - **Wireshark**

10. [Repository Configuration](/Notes/posts/Repository_Configuration)

11. [Kernel Options](/Notes/posts/Linux/Kernel/Kernel#kernel-options)

12. [Localization time setup](/Notes/posts/Localization_time_setup)

### Security

13. **Encryption**
   - **Hash vs Encryption vs Digital Signature**

     ![Hash vs Encryption vs Digital Signature](/Notes/hash_encryption_vs_digital_signature.png) 

   - [Encrypted Web traffic](/Notes/posts/encrypted_Web_traffic)

14. **System Auth**

    ![System Auth](/Notes/system_auth_visual.png)

15. [Permissions](/Notes/posts/Linux/Permissions)
    - [umask](/Notes/posts/Linux/umask)

16. **Logging**

    ![Logging canvas](/Notes/logs_canvas_visual.png)

17. [SELinux](/Notes/posts/SELinux)

18. [AppArmor](/Notes/posts/AppArmor)

### System Administration

19. **User manipulation**
    - [profile etc](/Notes/posts/Linux/etc/profile_etc) 
    - [skel etc](/Notes/posts/Linux/etc/skel_etc)

    - **Commands**
      - [chage](/Notes/posts/chage)

    - **Sudo and visudo**
    - [pkexec](/Notes/posts/pkexec)
    - [getfacl](/Notes/posts/getfacl)

### Cloud

20. [git](/Notes/posts/git)

21. [docker](/Notes/posts/Linux/Docker/docker)

22. **Automation tools**

    ![Automation tools](/Notes/automation_tools_canvas.png)

### Troubleshooting

#### I/O issues

23. **High latency**
    - Input/output (I/O) wait
    - Low throughput
    - Input/output operations per second (IOPS)
    - Low IOPS

    - Consider different **File systems**
    - Check for wa with `top`
    - [ioStat](/Notes/posts/ioStat)

24. [inodes exhaustion](/Notes/posts/inodes_exhaustion)

25. [IO schedulers](/Notes/posts/IO_schedulers)

26. [NVMe](/Notes/posts/NVMe)

27. **File system issues** (*corruption mismatch*)
    - [fsck](/Notes/posts/Linux/fsck)

28. **vstat**

29. [I/O summary](https://www.site24x7.com/learn/linux/disk-io-troubleshooting.html)

#### Network troubleshooting

- Checking [subnet mask](/Notes/posts/Network/basic_network_connections/subnet_mask) and **routing**
- [iptables](/Notes/posts/iptables)

##### Dropped packets

- [ip command](/Notes/posts/ip_command)
- Links (*the name of the network devices*)
  - **`ip -h -s link show device`**

##### DNS issues

- [nslookup](/Notes/posts/Linux/nslookup)
- [dig command](/Notes/posts/dig_command)
- [ping command](/Notes/posts/ping_command)

#### Network Resonance

- [nmap](/Notes/posts/Linux/nmap)
- `openssl client` to check whether the connection is legit

### CPU issues

- [Load Average](/Notes/posts/Load_Average)
- [CPU times](/Notes/posts/Linux/Kernel/Cpu) (*Subdivisions*)
- [CPU](/Notes/posts/Linux/Kernel/Cpu)
- [CPU process priorities](/Notes/posts/Linux/Kernel/Cpu#cpu-process-priorities)
  - [OOM process Killer](/Notes/posts/OOM_process_Killer)

- [Swap memory](/Notes/posts/Swap_memory)

#### Hardware

- `lscpu`
- `lsmem`
- ***/proc/cpuinfo***
- ***/proc/meminfo***

### User issues

- [Logging troubleshooting](/Notes/posts/Login_troubleshooting)
- [quota](/Notes/posts/quota)

### Systemd

- [Systemd Units](/Notes/posts/systemd#systemd-units)
- [Systemd Ordering](/Notes/posts/systemd_ordering)
- [Systemd Timers](/Notes/posts/systemd#systemd-timers)

---
