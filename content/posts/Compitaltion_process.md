---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Compitaltion process
---

## Compitaltion procces

![CompliationProcess_visual.png](/Notes/CompliationProcess_visual.png)
1. Comiple to assembly - **gc -S** test.c produces *test.s assambly* -
![1.
ComipleToAssembly.visual.png](/Notes/1.%20ComipleToAssembly.visual.png)
2. Assamble to the object file - **gc -c** test .c produces *test.o* -
![AssambleObjectFile .](/Notes/AssambleObjectFile_.visual.png) -

3.  Linker
    -   ![Linker_visual.png](/Notes/Linker_visual.png "fig:fig:fig:")
        -   **The linker combines object files to create a single
            executable**
            -   It resolves references to undefined symbols
            -   ![HowLinkerWorks_visual.png](/Notes/HowLinkerWorks_visual.png "fig:fig:fig:")
4.  **Loader** program that enables execution
    -   ![Loader_visual.png](/Notes/Loader_visual.png "fig:fig:fig:")

> \[!example\]- Summary
> [VIDEO](https://www.youtube.com/watch?v:N2y6csonII4)

-   [compilers](/Notes/posts/compilers)
-   [garbage_collector_c](/Notes/posts/Linux/Kernel/garbage_collector_c)
