### Inode structure
It'contains  all
- File size 
- [reference count](/reference count.md)
- permission
- etc

***/var/log/lastlog***

>[!tip] Files don't have metadata
>- They are just ***file name and inode member*** (*pointer*)
>- Directories are just table of file names and inodes

>[!Note] Inodes count is setup on the file system creation
>except [[zfs]]

---
[inodes exhaustion](/inodes exhaustion.md)
