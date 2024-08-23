+++
title = 'Raid Devices'
date = 2024-08-23T12:30:15+02:00
draft = false
+++


## RAID 0  Stripe 
> **It's vulnerable to the data loss!!!**
>![Pasted_image_20240425180738.png](/Notes/Pasted_image_20240425180738.png)

- All of the drives are added together (**ex 40 GB**)
	- **High  space composite**
	- When u write a file to the disc array quarter of the files  go to each disk
		- **Extremly fast   reads and writes**


## RAID 1  Mirrored Array 
>**Very good agaisnt data loss**
>![Pasted_image_20240425181811.png](/Notes/Pasted_image_20240425181811.png)

- Every single drive is a mirror of the other drives
	- **No speed increase**
	- **No storage increase** 

## Raid 5 
**Best of both worlds**
>![Raid5Example_visual.png](/Notes/Raid5Example_visual.png)

- Storage
- The total number of drives - one drive
- Each drive has **parity section** 
    - Which  stores the small part of each data
- Fast read and writes
- U're  able to lose one drive
	- U can restore the faild one 

