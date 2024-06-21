---
date:: 2023-06-29
type:: Linux

---

## Startup 
to start a project in next js type 
```
npx create-next-app@latest --ts .
```

**npm run dev**
on  http://localhost:3000
## Server/client 
	[[server base rendering]]
## Pages 

- In order to create a new page u have to make a *new folder* and inside of it add *page.tsx*
	- [Next-jsPages_visual.png](/static/Next-jsPages_visual.png)
 - Pages can be *nested* by sipmly adding  new folder to the aleready existihng one 
	 - **Dynamic routes**  are created by enclosing the folder name with *[ ]*
		 [Next-JSRoutingFolders_visual.png](/static/Next-JSRoutingFolders_visual.png)

## Layouts 
- Lyaouts are like temaplates in [Flask MAIN](/obisdian_ntoes/Flask startup/Flask MAIN.md) They are for *cross-section pages *
	- U can define multple layouts just by adding *layout.js to the subfolder*
		

## Loadigs 

- U can add *loading.js* file 
	-  U will reneder a *Loading Skeleton*
		  ![Next-JsLoaingSkeleton_visual.png](/static/Next-JsLoaingSkeleton_visual.png)

## Error Handling 
- To handle errors create *error.js file* in sub directory 
	- This wiil present the error acordingly to the user 
	 ![Next-JsErrorHandling_visual.png](/static/Next-JsErrorHandling_visual.png)


>[!quote] [React](/next-js/Reactjs/React.md)||[Flask MAIN](/obisdian_ntoes/Flask startup/Flask MAIN.md)||


$$ $$

>[!tip]- resources 
>[nex-js guide](https://www.youtube.com/watch?v=wm5gMKuwSYk)