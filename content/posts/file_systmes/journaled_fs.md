---
date: "2024-07-22T22:22:15+02:00"
draft: false
title: Journaled File System
---

When the file is beeing writen the new temp location is created and when
the write is succesfful whe change the pointer to the
[inode](/Notes/posts/inodes)

When a system crash or sudden power outage happens on a macOS, Windows,
or Linux machine, a journaling file system can return to the online
state quickly and has a lower possibility of corruption. This greatly
helps ensure data integrity and improves the ability to restore from
crashes.

[Docs](https://iboysoft.com/wiki/journaling-file-system.html)
