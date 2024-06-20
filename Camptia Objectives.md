1. **File system hierarchy** 
2. **Boot**
	- [UEFI vs BIOS](/UEFI vs BIOS.md) 
	- [Boot procces](/Boot procces.md)
	- [[UEFI vs BIOS#Partition types|Partition types]]
			- [[Files systems.canvas|Fiels systems]]
	- [GRUB 2](/GRUB 2.md)
		- [Run Levels](/obisdian_ntoes/for later/Run Levels.md)
3. **Devices types in /dev**
	- [Block vs character dev](/Block vs character dev.md)
		- [[Block vs character dev#Special character devices|Special character devieces]]
		- [Getting PCI dev info](/Getting PCI dev info.md)
	- [[Combining Disks (raid).canvas|Combining Disks (raid)]]
	 - **Commands** 
		 - stat(*gives a more detailed overview of the metadata*)
		 - file
4. [Archive vs Compress](/Archive vs Compress.md)
5. [Partitioning](/Partitioning.md)
	- [Automatic Mounting fstab](/Automatic Mounting fstab.md) 
	- [Dick encryption](/Dick encryption.md)
1. [LVM](/LVM.md)
2. [[Virtual Storage.canvas|Virtual Storage]]
3. [systemd](/systemd.md)
4. [[Cronetab]]/[At](/obisdian_ntoes/scriptss/At.md)/[[systemd#Systemd Timers|Systemd Timers]]
5. [[Process management_signals.canvas|Process mangament_signals]]
	- [[systemd#Systemd procedures|Systemd procedures]]
6. **Network**
	- [DNS](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/DNS.md) 
		- [nsswitch.conf](/nsswitch.conf.md)
		- [[DNS#Changing Dns server|Changing Dns server]]
		- [nslookup](/obisdian_ntoes/notes_obsidian/Linux/nslookup.md) 
	- [[tcpdump]]
	- [[whireshark]]
7. [Repository Configuration](/Repository Configuration.md)
8. [[Kernel#Kernel Otpions|Kernel Options]]
9. [Localizaiton time setup](/Localizaiton time setup.md)
## Security
1. **Encryption**
	-  [[Hash vs Encryption vs digital signature.canvas|Hash vs Encryption vs digital signature]]
	- [encrypted Web traffic](/encrypted Web traffic.md)
2. [[System Auth.canvas|System Auth]]
3. [Permissions](/obisdian_ntoes/notes_obsidian/Linux/Permissions.md)
	1. [umask](/obisdian_ntoes/notes_obsidian/Linux/umask.md)
4. [[Logging.canvas|Logign]]
5. [SELinux](/SELinux.md)
6. [AppArmor](/AppArmor.md)
### Sys amdimistrations
1. **User manipulation**
	 - [profile_etc](/profile_etc.md)
	 - [skel_etc](/etc/skel_etc.md)
	 2. **Commands**
	 - [chage](/chage.md) 
	1. **Sudo and visudo**
	2. [pkexec](/pkexec.md)
	3. [getfacl](/getfacl.md)
### Cloud 
1. [git](/git.md)
2. [docker](/obisdian_ntoes/notes_obsidian/Linux/Docker/docker.md)
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
	- [ioStat](/ioStat.md)
2. [inodes exhaustion](/inodes exhaustion.md) 
3. [IO schedulers](/IO schedulers.md)
4. [NVMe](/NVMe.md)
5. **File system isssues**(*coruption  missmatch*)
	1. [fsck](/obisdian_ntoes/notes_obsidian/Linux/fsck.md)
6. [[vstat]]
7. [Io summery](https://www.site24x7.com/learn/linux/disk-io-troubleshooting.html)
#### Network torubleshooting
- Checking [[subnet mask|subnet]] and **routing**
- [iptables](/iptables.md) 
##### Droped packett
- [ip_command](/ip_command.md)
- Links (*the name of the network devices*)
	- ***ip -h -s link show device***

##### Dns issues
- [nslookup](/obisdian_ntoes/notes_obsidian/Linux/nslookup.md)
- [dig_command](/dig_command.md)
- [ping_command](/ping_command.md)
####  Network Resonance
[nmap](/obisdian_ntoes/notes_obsidian/Linux/nmap.md)
 openssl client 
- to check weather the connection is legit

### Cpu issues 

- [Load Average](/Load Average.md)
- [[Cpu#Cpu times (*Subdevisions*)|Cpu times]]
- [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md)
- [[Cpu#CPU process priorities | Cpu priotities]]
	- [OOM process Killer](/OOM process Killer.md)

[Swap memory](/Swap memory.md)

#### Hardwere
- *lscpu*
- *lsmemm*
- ***/proc/cpuinfo***
- ***/proc/meminfo***

### User issue 
[[Login troubleshooting ]]
[quota](/quota.md)

### Systemd
[[systemd#Systmed units|Units]]
[[systemd_ordering|Ordering]]
[[systemd#Systemd Timers|Timers]]





--- 