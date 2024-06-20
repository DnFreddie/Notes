- **Pull model**
	- Ruby based
- Agent based 
	- Except **Puppet Bolt**
		- *It's a tool for routers and switches*


- ***MOM***   master of masters
	- Tool  that controls *all the masters*

>[!example]-
![Pasted_image_20240508131449.png](/static/Pasted_image_20240508131449.png)

### Configuration 

The main configuration is **Manifest.pp**
- It has **classes** that are build of *resources*
	- *Resources* are just [service](/obisdian_ntoes/notes_obsidian/Linux/service.md) like (*apache or docker*) 
	- This can be also setup further in module 
	
>[!example]- 
![Pasted_image_20240508132228.png](/static/Pasted_image_20240508132228.png)


--- 
[vSwitch](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/vitrual/vSwitch.md)