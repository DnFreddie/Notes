+++
title = 'Comptia Objectives'
date = 2024-07-22T09:10:24+02:00
draft = false
categories = ["certs"]
tags = ["Comptia Linux +"]
+++

*Overview of What You Need to Learn for CompTIA Linux+*

I highly recommend watching all the videos by [Shawn Powers](https://www.youtube.com/watch?v=niPWk7tgD2Q&list=PL78ppT-_wOmuwT9idLvuoKOn6UYurFKCp). 

Afterward, study from books and engage in hands-on projects or labs to reinforce your learning.

[Offical Objectives](https://partners.comptia.org/docs/default-source/resources/comptia-linux-xk0-005-exam-objectives-(1-0))

1. **File system hierarchy** 
2. **Boot**
	- [UEFI vs BIOS]({{< ref "posts/UEFI_vs_BIOS.md" >}}) 
	- [Boot procces]({{< ref "posts/boot_process.md" >}})
	- [Partition types]( {{< ref "posts/UEFI_vs_BIOS.md#partition-types" >}})
	    - **Fiels systems**

![Files systmes](/Notes/filesSystem_visiual.png)
- [GRUB 2]({{< ref "posts/GRUB_2.md" >}})
	- [Run Levels]({{< ref "posts/for_later/Run_Levels.md" >}})
3. **Devices types in /dev**
- [Block vs character dev]({{< ref "posts/Block_vs_character_dev.md" >}})
     - [Special character devices]({{< ref "posts/Block_vs_character_dev.md#special-character-devices" >}})
	- [Getting PCI dev info]({{< ref "posts/Getting_PCI_dev_info.md" >}})
>[Raid devices]( {{< ref "posts/RAID_STORAGE.md" >}})
>![Raid devices](/Notes/raid_devices_canvas.png)
 - **Commands** 
	- stat(*gives a more detailed overview of the metadata*)
	- file
4. [Archive vs Compress]({{< ref "posts/Archive_vs_Compress.md" >}})
5. [Partitioning]({{< ref "posts/Partitioning.md" >}})
	- [Automatic Mounting fstab]({{< ref "posts/Automatic_Mounting_fstab.md" >}}) 
	- [Disck encryption]({{< ref "posts/Dick_encryption.md" >}})
1. [LVM]({{< ref "posts/LVM.md" >}})
2. **Virtual Storage**
|-----------------|-----------------|
| ![Virtual Storage 1](/Notes/virtual_storage_visual.png) | ![Virtual Storage 2](/Notes/virtual_storage_tech.png) |

3. [systemd]({{< ref "posts/systemd.md" >}})
- [Cronetab]({{< ref "posts/scriptss/Cronetab.md" >}})
- [At]({{< ref "posts/scriptss/At.md" >}}) 
- [Systemd Timers]({{< ref "posts/systemd#systemd-timers" >}})
5. Process management
 ![Process mangament_signals](/Notes/process_menagment_visual.png)
    - [systemd procedures]({{< ref "posts/systemd.md#systemd-procedures" >}})
6. **Network**
	- [DNS]({{< ref "posts/Network/Phisicall/DNS.md" >}}) 
		- [nsswitch.conf]({{< ref "posts/nsswitch.conf.md" >}})
        - [Changing DNS server]({{< ref "/posts/Network/Phisicall/DNS.md#changing-dns-server" >}})
		- [nslookup]({{< ref "posts/Linux/nslookup.md" >}}) 
	- **tcpdump**
	- **whireshark**
7. [Repository Configuration]({{< ref "posts/Repository_Configuration.md" >}})
8. [Kernel Options]({{< ref "/posts/Linux/Kernel/Kernel.md#kernel-options" >}})
9. [Localizaiton time setup]({{< ref "posts/Localizaiton_time_setup.md" >}})
## Security
1. **Encryption**
	-  **Hash vs Encryption vs digital signature**
![Hash vs Encryption vs digital signature](/Notes/hash_encryption_vs_digital_siginture.png)


	- [encrypted Web traffic]({{< ref "posts/encrypted_Web_traffic.md" >}})
2. **System Auth**
![System Auth](/Notes/system_auth_visual.png)
3. [Permissions]({{< ref "posts/Linux/Permissions.md" >}})
	1. [umask]({{< ref "posts/Linux/umask.md" >}})
4. **Logging**
![Logging canvas](/Notes/logs_canvas_visual.png)
5. [SELinux]({{< ref "posts/SELinux.md" >}})
6. [AppArmor]({{< ref "posts/AppArmor.md" >}})
### Sys amdimistrations
1. **User manipulation**
	 - [profile_etc]({{< ref "posts/Linux/etc/profile_etc.md" >}})
	 - [skel_etc]({{< ref "posts/Linux/etc/skel_etc.md" >}})
	 2. **Commands**
	 - [chage]({{< ref "posts/chage.md" >}}) 
	1. **Sudo and visudo**
	2. [pkexec]({{< ref "posts/pkexec.md" >}})
	3. [getfacl]({{< ref "posts/getfacl.md" >}})
### Cloud 
1. [git]({{< ref "posts/git.md" >}})
2. [docker]({{< ref "posts/Linux/Docker/docker.md" >}})
3. **Automation tools**
![Automation tools](/Notes/automaiton_tools_canvas.png)
### Troubleshooting
 ##### Io issues
	 
1. **High latency**
	 Input/output (I/O) wait
	 Low throughput
	 Input/output operations per second (IOP)
	 Low IOPS 
	- Consider  diffrent **Files system**
	- check for wa with top
	- [ioStat]({{< ref "posts/ioStat.md" >}})
2. [inodes exhaustion]({{< ref "posts/inodes_exhaustion.md" >}}) 
3. [IO schedulers]({{< ref "posts/IO_schedulers.md" >}})
4. [NVMe]({{< ref "posts/NVMe.md" >}})
5. **File system isssues**(*coruption  missmatch*)
	1. [fsck]({{< ref "posts/Linux/fsck.md" >}})
6. **vstat**
7. [Io summery](https://www.site24x7.com/learn/linux/disk-io-troubleshooting.html)
#### Network torubleshooting
- Checking [subnet mask]({{< ref "posts/Network/basic_network_connections/subnet_mask.md" >}}) and **routing**
- [iptables]({{< ref "posts/iptables.md" >}}) 
##### Droped packett
- [ip_command]({{< ref "posts/ip_command.md" >}})
- Links (*the name of the network devices*)
	- ***ip -h -s link show device***

##### Dns issues
- [nslookup]({{< ref "posts/Linux/nslookup.md" >}})
- [dig_command]({{< ref "posts/dig_command.md" >}})
- [ping_command]({{< ref "posts/ping_command.md" >}})
####  Network Resonance
[nmap]({{< ref "posts/Linux/nmap.md" >}})
 openssl client 
- to check weather the connection is legit

### Cpu issues 

- [Load Average]({{< ref "posts/Load_Average.md" >}})
- [Cpu times]({{< ref "posts/Linux/Kernel/Cpu.md" >}})(*Subdevisions*)
- [Cpu]({{< ref "posts/Linux/Kernel/Cpu.md" >}})
- [Cpu procces priotities]({{< ref "posts/Linux/Kernel/Cpu.md#cpu-process-priorities" >}})
    - [OOM process Killer]({{< ref "posts/OOM_process_Killer.md" >}})

[Swap memory]({{< ref "posts/Swap_memory.md" >}})

#### Hardwere
- *lscpu*
- *lsmemm*
- ***/proc/cpuinfo***
- ***/proc/meminfo***

### User issue 
- [Logging torubleshooting]({{< ref "posts/Login_troubleshooting.md" >}})
- [quota]({{< ref "posts/quota.md" >}})

### Systemd
- [Systemd Units]({{< ref "posts/systemd#systemd-units" >}})
- [Systemd Ordering]({{< ref "posts/systemd_ordering.md" >}})
- [Systemd Timers]({{< ref "posts/systemd#systemd-timers" >}})





--- 
