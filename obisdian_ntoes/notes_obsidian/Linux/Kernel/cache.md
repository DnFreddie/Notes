---
date:: 2023-07-06
type:: Linux
---
## Casche 
Small and fast temporarly storage area 
located near [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md) for efficient and near-instant data retrival 

- It carries the freqently used data 
	- It uses **S-ram** 
- There are **3 casche levels**(*closesness and acessability*)
- L1 (priamary casche)
	-  fast 
	-  small
	-  emebeded in [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md)
- L2 
	  1. holds more then L1 
	  2. can be emebeded or run on a seperate chip
- L3 
		Specialiazed memory design to *improve* the performance of L1  and L2  casches



>[!quote] [[Cpu]] ||[[redis]] [Etag](/Etag.md)