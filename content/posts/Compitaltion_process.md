+++
title = 'Compitaltion process'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Compitaltion procces

![CompliationProcess_visual.png](/Notes/CompliationProcess_visual.png)
1. Comiple  to assembly 
	- **[[gc]]  -S** test.c produces *test.s assambly* 
		- ![1. ComipleToAssembly.visual.png](/Notes/1. ComipleToAssembly.visual.png) 
2. Assamble to the object file 
	- **[[gcc]] -c**  test .c produces *test.o*
		- ![AssambleObjectFile .visual.png](/Notes/AssambleObjectFile .visual.png)
			- 

3. Linker 
	- ![Linker_visual.png](/Notes/Linker_visual.png)
	  - **The linker combines object files to create a single executable** 
		  - It resolves references to undefined symbols 
		  - ![HowLinkerWorks_visual.png](/Notes/HowLinkerWorks_visual.png)
4. **Loader** program that enables execution 
	- ![Loader_visual.png](/Notes/Loader_visual.png)

>[!example]- Summary
> (https://www.youtube.com/watch?v=N2y6csonII4)[]

>[!quote] [compilers]({{< ref "posts/compilers.md" >}}) [garbage_collector_c]({{< ref "posts/Linux/Kernel/garbage_collector_c.md" >}})