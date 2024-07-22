+++
title = 'Swap memory'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    [Docs](https://averagelinuxuser.com/linux-swap/G)
- A **partition** or a **file** on a hard drive that helps to allocate temp memory when ram i exhaust 

- Check the size of the swap with 
	 ***swapon***

To create a swap file 
1. Create the file
```bash
sudo fallocater -l 1G /swapfile
```
2. Change permissions to *600*
3. change file to the **swapfile**
```bash
sudo mkswap /swapfile;
swapon /swapfile
```
4. edit the [[Automatic Mounting fstab|fstab]]

### Recommended swapiness
#proc 
- The default is 60 but commended is 10
	***/proc/sys/vm/swappiness***

	#etc 
- To change it edit
	***/etc/[[sysctl|sysctl.conf]]***

>[!tip]- Swap Recommended size 
>![Pasted_image_20240512205138.png](/static/Pasted_image_20240512205138.png)