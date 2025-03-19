---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: sudo
---

>  Get hold of permission  of the user  
``` bash
sudo -l -U <user>
# Output: 
# [sudo] password for aura:
# Matching Defaults entries for aura on nixos:
#     env_keep+=TERMINFO_DIRS, env_keep+=TERMINFO
#
# User aura may run the following commands on nixos:
#     (ALL : ALL) SETENV: ALL
```

* The defualt is stored in `/etc/sudoers`
    * But don't edit this direcly use `/etc/sudoers.d/`


>  Edit a Different Sudoers File
```bash
visudo -f /etc/sudoers.d/user_name
```

# **Sudoers Configuration Cheat Sheet**

## **1️⃣ Basic Syntax**
A `sudoers` rule follows this general format:

```bash
USER HOST = (RUNAS) COMMANDS
```

### **Breakdown:**
- `USER` → The username that gets sudo access.
- `HOST` → The system where the rule applies (usually `ALL`).
- `(RUNAS)` → The user the command is executed as (`ALL` means any user).
- `COMMANDS` → The allowed commands.

### **Example:**
```bash
alice ALL=(ALL) /usr/bin/apt update, !/usr/bin/apt upgrade
```
✅ Alice can run `apt update` but **not** `apt upgrade`.

---

## **2️⃣ Aliases in Sudoers**
Aliases group multiple users, commands, hosts, or run-as users for cleaner configuration.

### **Syntax:**
```bash
ALIAS_TYPE NAME = item1, item2, item3
```

### **Types of Aliases:**
| Alias Type     | Description                       | Example |
|---------------|---------------------------------|---------|
| `User_Alias`  | Groups multiple users          | `User_Alias ADMINS = alice, bob, charlie` |
| `Runas_Alias` | Groups users that commands can be executed as | `Runas_Alias WEBUSERS = www-data, nginx` |
| `Host_Alias`  | Groups multiple hosts         | `Host_Alias WEBSERVERS = web1, web2` |
| `Cmnd_Alias`  | Groups multiple commands      | `Cmnd_Alias RESTART = /bin/systemctl restart nginx, /bin/systemctl restart apache2` |

### **Example Using Aliases:**
```bash
User_Alias ADMINS = alice, bob
Cmnd_Alias SYSTEM_CMDS = /sbin/shutdown, /sbin/reboot

ADMINS ALL=(ALL) NOPASSWD: SYSTEM_CMDS
```
✅ Alice and Bob can **shutdown and reboot** the system without a password.

---

## **3️⃣ Granting sudo to Groups**
Instead of defining individual users, you can apply sudo rules to a **Linux group**.

### **Syntax:**
```bash
%groupname ALL=(ALL) ALL
```

### **Example:**
```bash
%sysadmins ALL=(ALL) ALL
```
✅ All users in the `sysadmins` group have **full sudo access**.

---

## **4️⃣ Using User ID (UID) Instead of Names**
You can define sudo access based on **user IDs (UIDs)** instead of usernames.

### **Syntax:**
```bash
#UID ALL=(ALL) COMMANDS
```

### **Example:**
```bash
#1001 ALL=(ALL) /usr/bin/passwd
```
✅ The user with **UID 1001** can run `passwd` with sudo.

---

## **5️⃣ Restricting sudo Based on Time & Environment**

### **Setting a Timeout for sudo Sessions**
```bash
Defaults timestamp_timeout=5  # Requires password after 5 minutes
```

### **Logging All sudo Commands**
```bash
Defaults logfile="/var/log/sudo.log"
```

### **Restricting sudo to Certain Hours (Using PAM time.conf)**
```bash
sudo;*;bob;!Al1000-1800  # Bob can only use sudo outside 10AM-6PM
```

---

## **6️⃣ Denying sudo Access**
To **completely prevent** a user from using sudo, use:
```bash
bob ALL=(ALL) !ALL
```
✅ Bob cannot use `sudo` for **any command**.

---

## **7️⃣ Allowing Only Specific Commands**

### **Example: Allow Only `rsync` to a Specific Host**
```bash
backupuser ALL=(ALL) NOPASSWD: /usr/bin/rsync -avz * backup.example.com:/backups
```
✅ `backupuser` can **only** sync files to `backup.example.com`.

---

## **8️⃣ Preventing Certain Dangerous Commands**

### **Example: Allow Everything EXCEPT `rm -rf` and `shutdown`**
```bash
devops ALL=(ALL) ALL, !/bin/rm -rf, !/sbin/shutdown
```
✅ `devops` can run anything **except** `rm -rf` and `shutdown`.

