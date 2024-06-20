---
date:: 06 04 2023
type:: Django**
---
## Startup 
- django-admin list all of the commands
1. Start project **django startproject name**
2. Run Developer server 
	- **python manage.py runserver**
3. Application 
	- Django splits the functionalites into apps 
	- The apps can be installed with 
		- **manage start app name**
		- This inisializes the app but it    <mark style="background: #72083D;">has to be  conneted to the project</mark>
	  - to do it u have to in **settings.py** *specyfie the hole path to app.py*
		  - Example 

	  - In **Vievs** there will be all of the fucntions that get triggerd when user visit a certian url 
	  - in **models** u can configure the databse 
## Urls 
U dont have to store all of the urls right  in main *urls.py* instead u can 
create your own *urls.py* in app directoy 
 - **Add urls dierctory to** ***main urls***

### Dynamics URls
*In order to achive this feture u have to add* **>type:var<** *to url*
- U have to pass type of varaible (*str int etc*) and *name*

--- 
## Tepaltes 
In order to add tempalte similalry to [Flask MAIN](/obisdian_ntoes/Flask startup/Flask MAIN.md) u have to create a *tempaltes* folder in main dir  
and *render* them
- **/sideNote/**
	- if u want tmepletes specyficly for ure app u have to create dir app in ure app dir and another with *ure app name* 
	- Example *"templates/base"*
		- And pass it like **render base/templateName**
- Connect it to the **settings.py**
### Tempaltes Syntax
Again its preety mutch the same as in *Flask* 
- **Extend Temapaltes** 
- **Inserting content**
	 - [Template Docs](https://docs.djangoproject.com/en/4.2/ref/templates/language/)
## Databes 
Django prepars a list of command tha needs to be activated (*migrated*)
To the *sqlite3* Database
**There are premade tables**
- Command is **mange migrate**

>[!quote]  [MAIN_Python](/obisdian_ntoes/notes_obsidian/ZPythonref/MAIN_Python.md)