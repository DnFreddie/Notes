---
date:: 30 04 2023
type:: Rust
---
## Compitaltion procces

![CompliationProcess_visual.png](/static/CompliationProcess_visual.png)
1. Comiple  to assembly 
	- **[[gc]]  -S** test.c produces *test.s assambly* 
		- ![1. ComipleToAssembly.visual.png](/static/1. ComipleToAssembly.visual.png) 
2. Assamble to the object file 
	- **[[gcc]] -c**  test .c produces *test.o*
		- ![AssambleObjectFile .visual.png](/static/AssambleObjectFile .visual.png)
			- 

3. Linker 
	- ![Linker_visual.png](/static/Linker_visual.png)
	  - **The linker combines object files to create a single executable** 
		  - It resolves references to undefined symbols 
		  - ![HowLinkerWorks_visual.png](/static/HowLinkerWorks_visual.png)
4. **Loader** program that enables execution 
	- ![Loader_visual.png](/static/Loader_visual.png)

>[!example]- Summary
> (https://www.youtube.com/watch?v=N2y6csonII4)[]

>[!quote] [compilers](/obisdian_ntoes/compilers.md) [[garbage_collector_c]]