---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: inodes
---

# Inode structure

-   File size
-   [reference count](/reference_count)
-   permission
-   etc

> \[!tip\] Files don’t have metadata - They are just ***file name and
> inode member*** (*pointer*) - Directories are just table of file names
> and inodes

> **Inodes count is setup on the file system creation**
>
> except zfs ## Inodes creation If you’re talking about ext4
> filesystems, it’s based on the size of the filesystem.

[ArchWiki](https://wiki.archlinux.org/index.php/ext4#Bytes-per-inode_ratio)

### Determine the amount of inodes on the system

``` bash
df -iT | awk 'NR > 1 {print $3}' | awk '{sum +=$1} END {print sum}'
```

------------------------------------------------------------------------

-   [Hardlink](/Linux/hardlink)
-   [Inodes exhaustion](/inodes_exhaustion)
-   [Journaled Filesystem](/file_systmes/journaled_fs)
