This is ussualy handeld 
by the **systemd**  u can create the service but the better is to use file

>[!example]- In order to do it on boot u have to create entries in  **/etc/fstab**
![Pasted_image_20240427154510.png](/static/Pasted_image_20240427154510.png)


- **PARTUUID** is when the partiotion **does not have** the files system on it 
- [UUID](/datatypes/UUID.md) is when therese file system
	- *U can specyfie both in fstab file*

>[!options]-
>- **dupm** not used anymore ussualy 0
>- pass to preforme filesystem check
>	- **0** to not perform
>	- **1** do it and this is the <mark style="background: #FF5582A6;">root partition</mark>
>	- **2** do it but this is **not** a root partition
>


>[!Tip]- Seting up [e2fsck](/e2fsck.md) to do the check on boot
>(*maximum mount count*)
>**tune2fs** -c 5 
>! U still have to change it in fstab the  **pass** obtion

---
[[Partitioning#Commands]]
[[SSD#Trimming|SSD Trimming]]