+++
title = 'Flask MAIN'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Startup 
- U have to import particular modules 
	1. **Flask**
	2. **redirect** 
	3. **url_for**
- **Baisici startup syntax**

```
app = Flask (__name__)

@app.route("/")

def home ():

return "This is the Main Page "
if __name__ == "__main__":

app.run()
```


- Every page is defined by the function 
```
 @app.route("/admin")
def admin ():
	return "This is the Admin  Page"
```
- To make sthings easier use duble slaches 
	- Example */about/*
### Redirect
- The simples is  use redirect method 
```
@app.route("/admin")
def admin ():
    return redirect(url_for("home"))
```
*This will redirect a person from admin to home*
- Theres also an  optionm to redirect someone to the commucniate 
```
@app.route("/<name>")
def about (name):
    return f"Hello {name}!
```
*This will print the varaible inserted into search u only has to put in html format*



### Python code in html 
- This allows us to write semi native python code
	- To refrence smth use **{{name of variable
```
{% for i in range (10)  %}
p> Hello <p
{% endfor %}
# This treats it as variable 
{% {x} %}
{%if x !=2 %}
{%endif %}
```

### Template Inharientence 
- U can inheraite tampletes by code blox  u just use **{ % block name %} {% endblock %}**
	- To extend the template u just use **{% extends "base.html" %}**
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{% block title %}
    
    {% endblock %}</title>
</head>
<body>
    {% block content %}
    
    {% endblock %}
</body>
</html>

```
## JS and Css 
- **Java script and css file should be located in a static folder** and linked by the *url similarly to the icons*
	- ![Java_Css_Files_visual.png](/static/Java_Css_Files_visual.png)
	- {{ url_for('static', filename='css/box.css') }}
