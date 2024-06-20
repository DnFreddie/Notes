---
date:: 2023-06-29
type:: Linux
---
## Shell 
#etc 
- The shells installed on the device are at *etc/shells*
	- u can check them using **cat etc/shells**

- Change the defult shell 
	- **chsh -s $(which zsh)**

	  - *if u add sudo it will change the shell for rooot user*

- Check the runing shell
	- *ps -p $$*
		- $$” indicates the process id of the current instance of the shell you are running


>[!quote]  [[ps]] | [Baisic Linux commands](/obisdian_ntoes/notes_obsidian/Linux/Linux commands/Baisic Linux commands.md)