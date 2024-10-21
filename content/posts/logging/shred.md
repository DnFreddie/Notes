---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: shred
---

## Shred

Overwrite the specified FILE(s) repeatedly in order to make it harder
for even very expensive hardware probing to recover data - On its own,
shred will delete the file and overwrite it several times - by default,
shred overwrites **four times**. - *u can increase the number of shreds*
example

``` bash
shred -f -n 10 /var/log/auth.log.*
```
