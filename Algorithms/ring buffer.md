#dynamic_array
## Ring Buffer 
 - In rust they are called [**VecDeque**](https://doc.rust-lang.org/std/collections/struct.VecDeque.html)
 - Its aarray lists with **index based head** and **index based head** 
	 - Everything before and after is **null**
	 - *The ring buffer meatients order*
- Removing 
	- In order to remove a value u *add +1 to the head or tail* 
	- The cost of operation is **O of 1**
- If u go of the edge **U can go "ring around "back to head **
	- ==This.tail = %mod len==
	![RingBuffer_visual.png](/static/RingBuffer_visual.png)

>[!bug] Dont let tail exects  your tail  
## Usebillity 
- logs 
- flushing 
- 

>[!quote] [Linked List](/Algorithms/Linked List.md)