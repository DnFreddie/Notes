+++
title = 'Linux Reconnaissance'
date = 2024-07-27T15:31:22+02:00
draft = false
+++

## Get the curren distro 

```bash
cat /etc/*release
```


## See what  procces stated the system 
```bash 
cat /proc/cmdline
cat /proc/cpuinfo
cat /proc/loavg 
```

### Check for older verisons of the kernel


```bash
ls -l /boot/vm*
#or 
apt list -installed | grep linux-image
```



### Check the mem consumption of the process
```bash
pgrep -ila 
expr `pgrep -i   hugo ` / 1024
cat /proc/$*/status
```

## See the paramters of the system
```bash 
# -S is for the type of metric
vmstat -S M  1
```


## Failed attemps to login  /var/log/secure

```bash
# List out ssh login attempts from non-existing and unauthorized user accounts
cat /var/log/secure | grep 'Invalid user'
```

```bash
# List out ssh login attempts by authorized ssh accounts with failed password
cat /var/log/secure | grep -v invalid | grep 'Failed password'
```

---
### List out successful login attempts
 ```bash
# List out successful ssh login attempts
cat secure | grep 'Accepted' | awk '{print $1 " " $2 " " $3 " User: " $9 " " }'
cat secure* | sort | grep 'Accepted' | awk '{print $1 " " $2 " " $3 " User: " $9 " IP:" $11 }'
```
```bash 
# List out successful ssh login attempts from sudo users
cat /var/log/secure | grep 'session opened for user root' | awk '{print $1 " " $2 " " $3 " Sudo User: " $13 " " }'
```
