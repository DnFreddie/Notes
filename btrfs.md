- U can mount 2 drives as one 
	```bash
	btrfs device add
	```
- U can easly conver it to the [RAID 1](/RAID 1.md) *mirror* array for the data protection
	```bash
	btrfs balance start -mconvert=raid1 -dconvert=raid1 test
	```

- Can do **snapschot **
- Can do **sub volumes**