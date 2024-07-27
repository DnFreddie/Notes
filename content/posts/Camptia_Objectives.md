+++
title = 'Camptia Objectives'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    1. **File system hierarchy** 
2. **Boot**
	- [UEFI vs BIOS]({{< ref "posts/UEFI vs BIOS.md" >}}) 
	- [Boot procces]({{< ref "posts/Boot procces.md" >}})
	- [[UEFI vs BIOS#Partition types|Partition types]]
			- [[Files systems.canvas|Fiels systems]]
	- [GRUB 2]({{< ref "posts/GRUB 2.md" >}})
		- [Run Levels]({{< ref "posts/for later/Run Levels.md" >}})
3. **Devices types in /dev**
	- [Block vs character dev]({{< ref "posts/Block vs character dev.md" >}})
		- [[Block vs character dev#Special character devices|Special character devieces]]
		- [Getting PCI dev info]({{< ref "posts/Getting PCI dev info.md" >}})
	- [[Combining Disks (raid).canvas|Combining Disks (raid)]]
	 - **Commands** 
		 - stat(*gives a more detailed overview of the metadata*)
		 - file
4. [Archive vs Compress]({{< ref "posts/Archive vs Compress.md" >}})
5. [Partitioning]({{< ref "posts/Partitioning.md" >}})
	- [Automatic Mounting fstab]({{< ref "posts/Automatic Mounting fstab.md" >}}) 
	- [Dick encryption]({{< ref "posts/Dick encryption.md" >}})
1. [LVM]({{< ref "posts/LVM.md" >}})
2. [[Virtual Storage.canvas|Virtual Storage]]
3. [systemd]({{< ref "posts/systemd.md" >}})
4. [Cronetab]({{< ref "posts/scriptss/Cronetab.md" >}})/[At]({{< ref "posts/scriptss/At.md" >}})/[[systemd#Systemd Timers|Systemd Timers]]
5. [[Process management_signals.canvas|Process mangament_signals]]
	- [[systemd#Systemd procedures|Systemd procedures]]
6. **Network**
	- [DNS]({{< ref "posts/Network/Phisicall/DNS.md" >}}) 
		- [nsswitch.conf]({{< ref "posts/nsswitch.conf.md" >}})
		- [[DNS#Changing Dns server|Changing Dns server]]
		- [nslookup]({{< ref "posts/Linux/nslookup.md" >}}) 
	- [[tcpdump]]
	- [[whireshark]]
7. [Repository Configuration]({{< ref "posts/Repository Configuration.md" >}})
8. [[Kernel#Kernel Otpions|Kernel Options]]
9. [Localizaiton time setup]({{< ref "posts/Localizaiton time setup.md" >}})
## Security
1. **Encryption**
	-  [[Hash vs Encryption vs digital signature.canvas|Hash vs Encryption vs digital signature]]
	- [encrypted Web traffic]({{< ref "posts/encrypted Web traffic.md" >}})
2. [[System Auth.canvas|System Auth]]
3. [Permissions]({{< ref "posts/Linux/Permissions.md" >}})
	1. [umask]({{< ref "posts/Linux/umask.md" >}})
4. [[Logging.canvas|Logign]]
5. [SELinux]({{< ref "posts/SELinux.md" >}})
6. [AppArmor]({{< ref "posts/AppArmor.md" >}})
### Sys amdimistrations
1. **User manipulation**
	 - [profile_etc]({{< ref "posts/profile_etc.md" >}})
	 - [skel_etc]({{< ref "posts/etc/skel_etc.md" >}})
	 2. **Commands**
	 - [chage]({{< ref "posts/chage.md" >}}) 
	1. **Sudo and visudo**
	2. [pkexec]({{< ref "posts/pkexec.md" >}})
	3. [getfacl]({{< ref "posts/getfacl.md" >}})
### Cloud 
1. [git]({{< ref "posts/git.md" >}})
2. [docker]({{< ref "posts/Linux/Docker/docker.md" >}})
3. [[Automation tools.canvas|Automation tools]]
### Troubleshooting
 ##### Io issues
	 
1. **High latency**
	 Input/output (I/O) wait
	 Low throughput
	 Input/output operations per second (IOP)
	 Low IOPS 
	- Consider  diffrent [[Files systems.canvas|Files system]]
	- check for wa with top
	- [ioStat]({{< ref "posts/ioStat.md" >}})
2. [inodes exhaustion]({{< ref "posts/inodes exhaustion.md" >}}) 
3. [IO schedulers]({{< ref "posts/IO schedulers.md" >}})
4. [NVMe]({{< ref "posts/NVMe.md" >}})
5. **File system isssues**(*coruption  missmatch*)
	1. [fsck]({{< ref "posts/Linux/fsck.md" >}})
6. [[vstat]]
7. [Io summery](https://www.site24x7.com/learn/linux/disk-io-troubleshooting.html)
#### Network torubleshooting
- Checking [[subnet mask|subnet]] and **routing**
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

- [Load Average]({{< ref "posts/Load Average.md" >}})
- [[Cpu#Cpu times (*Subdevisions*)|Cpu times]]
- [Cpu]({{< ref "posts/Linux/Kernel/Cpu.md" >}})
- [[Cpu#CPU process priorities | Cpu priotities]]
	- [OOM process Killer]({{< ref "posts/OOM process Killer.md" >}})

[Swap memory]({{< ref "posts/Swap memory.md" >}})

#### Hardwere
- *lscpu*
- *lsmemm*
- ***/proc/cpuinfo***
- ***/proc/meminfo***

### User issue 
[[Login troubleshooting ]]
[quota]({{< ref "posts/quota.md" >}})

### Systemd
[[systemd#Systmed units|Units]]
[[systemd_ordering|Ordering]]
[[systemd#Systemd Timers|Timers]]





--- 