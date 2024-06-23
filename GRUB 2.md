## Edit config 
It's in the */etc/defualt/*

### To update 
- *update-grub* or *update-grub2*
	- Or do it manually **grub-mkconfig**


### See the init boot procsse right from grub

```bash 
cat /proc/cmdline
```
```
dmesg | head 
```



>[!quote] [Boot procces](/Boot procces.md)
