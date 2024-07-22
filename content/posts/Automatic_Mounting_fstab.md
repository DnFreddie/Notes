+++
title = 'Automatic Mounting fstab'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

*This is ussualy handeld 
by the **systemd**  u can create the service but the better is to use file*

>Example
>![Pasted_image_20240427154510.png](/static/Pasted_image_20240427154510.png)
>In order to do it on boot u have to create entries in  **/etc/fstab**


- **PARTUUID** is when the partiotion **does not have** the files system on it 
[UUID]({{< ref "/posts/datatypes/UUID.md" >}}) is when therese **file systemQ**
	- *U can specyfie both in fstab file*

>Options
>- **dupm** not used anymore ussualy 0
>- pass to preforme filesystem check
>	- **0** to not perform
>	- **1** do it and this is the <mark style="background: #FF5582A6;">root partition</mark>
>	- **2** do it but this is **not** a root partition
>


Seting up [e2fsck]({{< ref "posts/e2fsck.md" >}})
to do the check on boot
(*maximum mount count*)
```bash
tune2fs -c 5 
```
**U still have to change it in fstab the  **pass** obtion**

---
[Partitioning]({{< ref "posts/Partitioning.md#commands" >}})
[SSD Trimming]({{< ref "posts/SSD.md#trimming" >}})

