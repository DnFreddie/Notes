---
date:: 16 04 2023
type:: Linux
---
## Symbolic link
**File that points to another file**
*ln -s target linkname*
```bash
ln -s [TARGET DIRECTORY] [SYMLINK NAME]

```

>[!example]-
>If you try to access somedir in this directory, the system gives you /home/origdir instead. Symbolic links are
simply names that point to other names. Their names and the paths to which they point don’t have to mean
anything. For example, /home/origdir doesn’t even need to exist.

>[!bug]  Warnning 
>Don’t forget the -s option when creating a symbolic link. Without it, ln creates a hard link, giving
an additional real filename to a single file. The new filename has the status of the old one; it points
(links) directly to the file data instead of to another filename as a symbolic link does. Hard links can
be even more confusing than symbolic links. Unless you understand the material in 4.5 Inside a
Traditional Filesystem, avoid using them

>[!quote] [[Baisic Linux commands]] [Commands](/obisdian_ntoes/notes_obsidian/MAIN Linux/Commands.md)