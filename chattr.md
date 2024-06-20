### Change attribute
The chattr command in Linux is a powerful tool for managing file attributes, offering features like setting the sticky bit and making files immutable.

### Sticky Bit (t):

The sticky bit, denoted by 't', is a special file attribute primarily applied to directories. When set on a directory, it restricts the deletion of files within that directory to the file owner, directory owner, or root user.
Usage:
```bash 
chattr +t directory_name
```
### Immutable Attribute (i):
The immutable attribute, denoted by 'i', prevents a file from being modified, deleted, renamed, or linked to by any user, including the root user.
```bash
chattr +i filename
```


---
[getfacl](/getfacl.md)
