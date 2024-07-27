+++
title = 'quick sort'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    **"Divide and concure"**
[binary search]({{< ref "posts/Algorithms/binary search.md" >}})


- Split input into number chunks and go over smaller subset and go over those smaller subset 
	- ==it porgreslivi get smaller until it gets to funddemntal  unit example== 
		 *(array of one element is always sorted)*
- Steps 
	- **Weak soritng**
		Everything before the **pivot**  is smaller 
		Everything after is  bigger 
		![QuicSortTree_visual.png](/Notes/QuicSortTree_visual.png)
- **Run time**
	==O of n log n==

## Quicsort problem
- I u hand in **reversed** sorted array 
	U end up with run time of ==O of n2(squer)==
	[ReversedSortedArrayProblem_visual.png](/ReversedSortedArrayProblem_visual.png)
- **Solution**
	- Use  **median of free**
		- Take first middle and last elemnet of an array 
			- **Sort them proparly** and choose the middle item as a 