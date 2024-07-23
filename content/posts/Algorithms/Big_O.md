+++
title = 'Big O'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

*How many steps does it take to execute*

Its the what to categorize algortihms  *time or memory requaierments based on the input*
>Tip
>
>look for loops :)
>signular loop is one O fo N 

- growth with respecet to input 
- constans does not matter 
- worst case is tpyically a measure    
- Its not meannt to be an exact measument '
	- it genaralaizes the growth of your algorithm 
		- Example :
			- Oh of N means that the algorithm will gorw linearly based on the input  
		- **Why to use it**
			- It helps us make deciosion about what *data structers and algortihms to use*
				- Knwoing the performence it helps to generate the best outcome 
- **The data structers are design to have the best outcom in a given usage if u  use them incorelcy the lower the performance**

## Big O Types
- O squere ("*usually loop inside the loop*")
	**O (N^2)**
 
	 >![OSquer_visla.png](/OSquer_visla.png)
  
>Tip
>
>If the input halves itsel at each step,its likely *O of (LogN) or O(NlogN)*
	
- O(n log n)
    - [Quick Sort]({{< ref "posts/Algorithms/quick_sort.md" >}})
- O(log n)
    - [Binary search trees]({{< ref "posts/Algorithms/Binary_Search_Tree.md" >}})
	
>![BIgOTypes_visual.png](/BIgOTypes_visual.png)




