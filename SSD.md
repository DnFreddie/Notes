### Solid-state drive 


## [[Block_dev|Block devices]] Limitations
- Data can be read only on **empty** [[Block_dev#page|pages]]
- *Erasing* can only be than at the [[Block_dev|block level]] 

### Trimming
TRIM is a command with the help of which the operating system can tell the solid state drive ([SSD](/SSD.md)) which data blocks are no longer needed and can be deleted, or are marked as free for rewriting
- Instead of deleting hole blocks of memory it enables to delete [[Block_dev#page|pages]]
- Whenever a delete command is issued by the operating system or the user, the [SSD](/SSD.md) automatically sends a TRIM command to wipe the storage space being erased.
#etc 
>[!tip] To enalbe it permanetyly modyfiie
>***/etc/fstab*** and add **discard option**
>![Pasted_image_20240511151618.png](/static/Pasted_image_20240511151618.png)
	
- **To run it manually**
```bash
sudo fstrim -v 
```

[Docs](https://www.baeldung.com/linux/trim-ssd#2-modifying-theetcfstab-file) 

j[[Automatic Mounting fstab|fstab]]

#### Benefits
- Prevents fast wear of the flash memory chips that are found inside the [SSD](/SSD.md).
- Faster reading and writing speed 

---


[NVMe](/NVMe.md)