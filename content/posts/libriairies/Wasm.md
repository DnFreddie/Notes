+++
title = 'Wasm'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Web Assembly
- This allows us to compile code into the browser:
	- It runs a **virtual machine** underneath the hood
	- It provides better performance and can be implemented with JavaScript
- *It's basically a microprocessor in the browser*
	- [Compilation process history]({{< ref "/posts/compilation_porcess/Compialtion_process_history.md" >}})
- Web Assembly is stack-based ([stack algorithms]({{< ref "posts/Algorithms/stack_algorithms.md" >}}))
- *Web Assembly does not know what the string is*
	$$1$$

## Web Assembly Module
- It's a binary file:
	- **The wasm can interact with JavaScript**
	- *Yet it cannot talk directly with HTML*
		- ![WebAssemblyBrowser_visual.png](/Notes/WebAssemblyBrowser_visual.png)
	
	$$2$$

## Frameworks
- [Leptos](https://leptos-rs.github.io/leptos/view/01_basic_component.html)

## Docker + WASM
- [Docs](https://www.youtube.com/watch?v=7553XZ0T6pM)
- [Speed Test](https://youtu.be/4KtotxNAwME)

---
[Compilers]({{< ref "posts/compilers.md" >}}) 

[Docs](https://www.youtube.com/watch?v=3sU557ZKjUs)

