
| **Block**                                                     |                                   |
| ------------------------------------------------------------- | --------------------------------- |
| uses buffers and caches to transfer large amounts of data<br> | a stream of data (*no buffering*) |
| In ls show up as **b**                                        | In ls show up as **c**            |




### Special character devices 

- **/dev/0** constant stream of <mark style="background: #FF5582A6;">null characters</mark>(*not zeros*)
	- Used to **zeroing out hard drive** 
	- **[devnull](/obisdian_ntoes/scriptss/devnull.md)** only data goes in (**bit bucket**)

**Geting  random characters**
- ***/dev/random*** wont return information unless theres enough **entropy**
- ***/dev/urandom*** always returns random 

>[!tip] U can get random numbers via $RANDOM

---- 
 [Getting PCI dev info](/Getting PCI dev info.md) [Device types](/obisdian_ntoes/notes_obsidian/Linux/Device types.md)
 