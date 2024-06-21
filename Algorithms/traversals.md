---
date:: 2023-07-06
type:: Algorithms
---
## Traversals
The running time of thhi operaiton is **O of N**
*Doing the treversal we use [stack_algorithms](/Algorithms/stack_algorithms.md)*
The value gets put on the stack ones it not fiind we pop it and move it to the next branch
$$1$$
## Depth first search
-  Ways to try a visit every single node
	
	- **Pre order**
		- U first visit the node then i do the recursion 
		- ==root at the begining==
	- **In odrder** 
		- We recurse to the last elemnt of the tree side then add the middle point and recurse left
		- ==root at the middle==
	- **Postorder** we do recursion then we visit the  node 
		- *post order is good to clear the data on a way out*
		- ==root at the end==

	$$2$$ 
## Breadth first seatch
Oposite of a depth first search 
- We use [queue_algorithms](/Algorithms/queue_algorithms.md) **instead** of [stack_algorithms](/Algorithms/stack_algorithms.md) 
- Its a **tree level visiting**
	One tree level at a time 
	![BreadthFirstSarge_visual.png](/static/BreadthFirstSarge_visual.png)
>[!quote] [trees_algorithms](/Algorithms/trees_algorithms.md)