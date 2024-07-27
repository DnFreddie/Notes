+++
title = 'inodes'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

# structure
It'contains  all
- File size 
- [reference count]({{< ref "posts/reference count.md" >}})
- permission
- etc

***/var/log/lastlog***

>[!tip] Files don't have metadata
>- They are just ***file name and inode member*** (*pointer*)
>- Directories are just table of file names and inodes

 >**Inodes count is setup on the file system creation**
>
>except zfs

---
[Inodes exhaustoipn]({{< ref "posts/inodes_exhaustion.md" >}})

[Journaled Filesystem]({{< ref "posts/file_systmes/journaled_fs.md" >}})


