---
date: "2024-10-10T19:48:15+02:00"
draft: false
title: Passwd
---

| Field                    | Description                                                                                                                                                             |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Username**             | Used when user logs in. Must be between 1 and 32 characters in length.                                                                                                  |
| **Password**             | An `x` character indicates that an encrypted and salted password is stored in the `/etc/shadow` file. Use the `passwd` command to compute or update the password hash.  |
| **User ID (UID)**        | Each user must be assigned a UID. UID 0 is reserved for root, UIDs 1-99 are reserved for predefined accounts, and UIDs 100-999 are reserved for system accounts/groups. |
| **Group ID (GID)**       | The primary group ID, stored in the `/etc/group` file.                                                                                                                  |
| **User ID Info (GECOS)** | The comment field for extra information about the user, such as full name or phone number. This field is used by the `finger` command.                                  |
| **Home Directory**       | The absolute path to the user’s home directory. If it does not exist, the user’s directory becomes `/`.                                                                 |
| **Command/Shell**        | The absolute path of a command or shell (e.g., `/bin/bash`). It does not have to be a shell; for example, `/sbin/nologin` can be used to prevent direct login.          |

## Geting an entry

[Getent](/Notes/posts/getent)

``` bash
getent passwd {user1} {user2}
```
