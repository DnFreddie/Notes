+++
title = 'grep'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ---
date:: 30 03 2023
topic:: linux-command
type:: Linux
---
## grep
This search for a particular keyword 
- ==Syntax==
	**grep [options] "pattern" file/files**

- Options 
	- -f Takes search string/pattern from a file 
		- exaple the file contains classes or smth 
	- -e Provieds a number of strigs 
		- **its better to use -E and | the resutl **
	- -E 
		- grep -e "line|xd|smth|etc" file name 