### Security enhanced Linux
Define on every file what are they allowed to access 
### Modes
```bash
sestatus
```
- **Enforcing** 
	 checking the attribute of the files does't let them access it 
- **Permissive** 
	Only *logs* the check 
- **Disabled**

### Types 
 
- **Targeted**
	Targeted processes are protected
- **Minimum** 
	Only *selected* processes are targeted
- **Mls** 
	*Multi Level security protection* 
>[!example]-
> ![Pasted_image_20240507104548.png](/static/Pasted_image_20240507104548.png)
### Labels
>[!example] It's a label on the file
>![Pasted_image_20240507105206.png](/static/Pasted_image_20240507105206.png)

- **User**
	User mapped to the Selinux 
- **Role**
	What a user or daemon can do with the file 
- **Type**
	What kind of object is it 
	-  It't insert  **context** on a new file not if the file is moved
- **Sensitivity level**
	 *Only in Mls* 

- **To display it**
 ```bash
 ls -lZ
```

### Changing context
- **chcon** 
	Changes the *type*  for new 

```bash
chcon -t httpd_sys file
```
- **restorecon**
	- set's the proper context for the file 

```bash
restorecon -R *
```

>[!tip] To change the conetex for all the files 
>add */.autorelable* 


### Updating Policies
Occasionally, programs may attempt to access different user contents using their policies. However, SELinux may block such attempts, even when the set option is correct. In such cases, you need to adjust the SELinux boolean settings.


```bash
semanage boolead --modyfie --on options
```


---

[AppArmor](/AppArmor.md)