#issue 
- Go wont copile on aws unleess this paramter is being added to the copmpilation flag 
- the fucntion either cant share the dir or its impossible for it to acess diffren name of the bainery only main is accebtable 
	- If its not main it gives the ereror of the the file has no been found and fails 
- Even if u sepcyfie that the bucket file should bee public  it still make u no enabke permmiosn by ginbn u this error  
	- ![[Pasted image 20231205161358.png]]
- The way to fix is to set first enable the Acl in the consloe and use it in the code ![[Pasted image 20231205161747.png]]