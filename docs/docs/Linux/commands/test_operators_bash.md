---
date: "2024-10-18T12:56:49+02:00"
draft: false
title: Test operators bash
---

# Bash Test Operators Cheat Sheet

### Compound Comparison

| Operator | Description | Example         |
|----------|-------------|-----------------|
| `-a`     | logical and | Similar to `&&` |
| `-o`     | logical or  | Similar to `||` |

### Integer Comparison

| Operator | Description                          | Example                |
|----------|--------------------------------------|------------------------|
| `-eq`    | is equal to                          | `if [ "$a" -eq "$b" ]` |
| `-ne`    | is not equal to                      | `if [ "$a" -ne "$b" ]` |
| `-gt`    | is greater than                      | `if [ "$a" -gt "$b" ]` |
| `-ge`    | is greater than or equal to          | `if [ "$a" -ge "$b" ]` |
| `-lt`    | is less than                         | `if [ "$a" -lt "$b" ]` |
| `-le`    | is less than or equal to             | `if [ "$a" -le "$b" ]` |
| `<`      | is less than (within double parens)  | `(("$a" < "$b"))`      |
| `<=`     | is less than or equal to (double)    | `(("$a" <= "$b"))`     |
| `>`      | is greater than (within double)      | `(("$a" > "$b"))`      |
| `>=`     | is greater than or equal to (double) | `(("$a" >= "$b"))`     |

### String Comparison

| Operator    | Description                   | Example                                      |
|-------------|-------------------------------|----------------------------------------------|
| `=` or `==` | is equal to                   | `[[ $a == z* ]]` or `[[ "$a" == "z*" ]]`     |
| `!=`        | is not equal to               | `if [ "$a" != "$b" ]`                        |
| `<`         | is less than (ASCII order)    | `[[ "$a" < "$b" ]]` or `if [ "$a" \< "$b" ]` |
| `>`         | is greater than (ASCII order) | `[[ "$a" > "$b" ]]` or `if [ "$a" \> "$b" ]` |
| `-z`        | string is null (zero length)  | `if [ -z "$s" ]`                             |
| `-n`        | string is not null            | `if [ -n "$s" ]`                             |

### File Test Operators

| Operator     | Description                                        | Example                  |
|--------------|----------------------------------------------------|--------------------------|
| `-e` or `-a` | file exists (deprecated: `-a`)                     |                          |
| `-f`         | file is a regular file                             |                          |
| `-d`         | file is a directory                                |                          |
| `-h` or `-L` | file is a symbolic link                            |                          |
| `-b`         | file is a block device                             |                          |
| `-c`         | file is a character device                         |                          |
| `-p`         | file is a pipe                                     |                          |
| `-S`         | file is a socket                                   |                          |
| `-s`         | file is not zero size                              |                          |
| `-t`         | file descriptor is associated with terminal device | `if [ -t 0 ]`            |
| `-r`         | file has read permission                           |                          |
| `-w`         | file has write permission                          |                          |
| `-x`         | file has execute permission                        |                          |
| `-g`         | set-group-id (sgid) flag is set                    |                          |
| `-u`         | set-user-id (suid) flag is set                     |                          |
| `-k`         | sticky bit is set                                  |                          |
| `-O`         | you are the owner of the file                      |                          |
| `-G`         | group-id of file matches yours                     |                          |
| `-N`         | file modified since last read                      |                          |
| `-nt`        | file is newer than another file                    | `if [ "$f1" -nt "$f2" ]` |
| `-ot`        | file is older than another file                    | `if [ "$f1" -ot "$f2" ]` |
| `-ef`        | files are hard links to the same file              | `if [ "$f1" -ef "$f2" ]` |
| `!`          | negates the test (not)                             |                          |

------------------------------------------------------------------------
