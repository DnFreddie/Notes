+++
title = 'btrfs'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

U can mount 2 drives as one 

```bash 
btrfs device add
```

- U can easly conver it to the [Raid 1]({{< ref "posts/Raid_1.md" >}}) **mirror array** for the data protection

	```bash
	btrfs balance start -mconvert=raid1 -dconvert=raid1 test
	```

- Can do **snapschot**
- Can do **sub volumes**