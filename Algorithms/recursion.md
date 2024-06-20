## Recursion 
*The function calles itself until it reaches ==base case==*



"*Friedns dont let friends recurse  without a toolbox*"


- Base case is an instance whent the fucntion no longer calls itsef instead it returns value 
	- *Always vernalize the base case correcly*
	- Only then Recourse 

- **Recurse Steps**

	- Pre (recurse )
		- n+
	- Recurse 
	- Post (recurse)


- s
	- Retrun address
		- Every time the function is called it needs to know how it got here becouse it has to *hand in the value back* 
	- Return Value 
		- The space for value that is beeing return 
	- [Arguments](/obisdian_ntoes/scriptss/Arguments.md) 
		- The arguments u pass in to the function 

![BaseCaseRecursion_visual.png](/static/BaseCaseRecursion_visual.png)



| rA               | rV  | A   |     |
| ---------------- | --- | --- | --- |
| foo5             | 5+ 10 | 5   |     |
| foo4^(points up) | 4 + 6   | 4   |     |
| foo3^            | 3 + 3    | 3   |     |
| foo2^            | 2 + 1    | 2   |     |
| foo1^            | 1   | 1    | STOP RECURSION     |

>[!bug] Stack treace Error
>	*Errors of funcitons that had been called*
>Erorr at foo line :2 
>foo 3 the value it returns from 
>foo3 


#codingProblem
## Maze Solver Porblem
![MazeSolver_visual.png](/static/MazeSolver_visual.png)
- Code implemention
- 