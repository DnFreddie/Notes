---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Compitaltion process
---

## Compitaltion procces

![CompliationProcess_visual.png](/static/CompliationProcess_visual.png)
1. Comiple to assembly - **gc -S** test.c produces *test.s assambly* -
![1.
ComipleToAssembly.visual.png](/static/1.%20ComipleToAssembly.visual.png)
2. Assamble to the object file - **gc -c** test .c produces *test.o* -
![AssambleObjectFile .](/static/AssambleObjectFile_.visual.png) -

3.  Linker
    -   ![Linker_visual.png](/static/Linker_visual.png "fig:fig:fig:")
        -   **The linker combines object files to create a single
            executable**
            -   It resolves references to undefined symbols
            -   ![HowLinkerWorks_visual.png](/static/HowLinkerWorks_visual.png "fig:fig:fig:")
4.  **Loader** program that enables execution
    -   ![Loader_visual.png](/static/Loader_visual.png "fig:fig:fig:")

> \[!example\]- Summary
> [VIDEO](https://www.youtube.com/watch?v:N2y6csonII4)

-   [compilers](/compilers)
-   [garbage_collector_c](/Linux/Kernel/garbage_collector_c)
