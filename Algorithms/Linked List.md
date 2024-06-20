---
date:: 2023-06-30
type:: Linux
---
Often called *node base data structure*(*type fo container*)
- So its an  **[node](/node.md) that contnateins a **value** and **refrence to another value/node**
$$$$
- Every linked list is a *graph*
>[!example]- Signly link list a only points forwaords there no refrence backworks
>![SinglyLinkedList_visual.png](/static/SinglyLinkedList_visual.png)

- **Isertion and deltion are very fast**
	- <mark style="background: #FF5582A6;">There's no index </mark> (*u have to manulay step over the value u want to finde*) 
	- Dleation in the middle can be costly becouse u have to *==travers==* to the value
- dobule link list can look backwards
- Inseration and delation is always **O of N**    
	- U just have to breake  **4 links**
	- They are all **constants** no matter the value  or the size
		 *u have to set .nexts and .previous*
		- Inseration  
		 ![LinkedListModyfing_visual.png](/static/LinkedListModyfing_visual.png)
		 - Delition *(the order of operations is extremaly importat)*
			 - ![LinkedListDelation_visual.png](/static/LinkedListDelation_visual.png)
			 - <mark style="background: #FF5582A6;">Add  check statment weather (A or B are real)</mark>



## Head and tail  
The linked list has a *special refrence* that points to the beginning and the end of a  list 

## Summary 
- prepend/append *constant time* cheap
- insetion in the middle *traversing* costly
- dleation from the end *constant time* cheap
- dealtio in the middle *traversing* costly
- Get head/tail  *constant time* cheap 
- Get in gerneral  
>[!bug] Theres no hopping on a linked list only travesting 


--- 

 [Static Array](/obisdian_ntoes/Applied data_Obsydian/Python/data.py/Static Array.md)