### Chains 
- Tags that  define and match *packet* to the *state*
>[!Overview]
>![Pasted_image_20240511164722.png](/static/Pasted_image_20240511164722.png)k
#### Setting default policy 

```bash
iptables --policy CHAIN  METHOD
```
 *It's recommended to set up it to accep first and then change it*

### Filter table
- filtering incoming traffic
	- *fire wall stuff*

##### Rules
***Rules are  applied from the top to the bottom*** 
 
 -  to list
```bash
sudo iptables -L
```

-  to append 
	
```bash 
iptables -A CHAIN  -s(source) 10.0.0.1 -j(target Rule) DROP
```

- to put on top 
```bash 
iptables -I -A CHAIN  -s(source) 10.0.0.1 -j(target Rule) DROP
```

**Accept** 
- Stop proccesing and allow the packet to flow to the [service](/obisdian_ntoes/notes_obsidian/Linux/service.md)  

**Reject**
- Stop the packet and  *send feedback* to the user


**Drop** 
- Drop packet and don't inform anyone

>[!note] If the packet doesn't match the rule 
>it would be matched by the *default rule*
>If no *default rule* the packet will be accepted

#### Blocking  Ports
```bash
iptables -I INPUT -p -tcp -dport 80
```
### [NAT](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/basic network connections/NAT.md) table
- Redirect to different interfaces
### Mangle table
- Modifying *packets and connections*


----