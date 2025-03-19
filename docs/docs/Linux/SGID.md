---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: SGID
---

## Grants the permmison to the group

**The SGID bit is represented as 2 before the regular permissions**
\>\[!example\] The SGID bit is represented as 2 before the regular
permissions

new file with the resulting permissions 644 would be represented as 2644
when the SGID bit is set. Again, you would use the chmod command for
this—for example, *chmod 2644 filename*. ## To a file This means that,
with an SGID bit set, someone without execute permission can execute a
file if the owner belongs to the group that has permission to execute
that file ## To directory Ownership of new files created in that
directorygoes to the directory creator’s group, rather than the file
creator’s group. - This is very useful when a directory is shared by
multiple users. All users in that group can execute the file(s), not
just a single user.
