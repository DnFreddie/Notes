---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Variables
---

## Variables

To decleare variable: **LOL=“xd”** To refrence a variable u have to add
$ : **echo $LOL** <mark style="background: #FF5582A6;">IMPORTANT!</mark>
Statment in **’’** pritnts the variable name
![BashVaraiblesQuotes_visual.png](/static/BashVaraiblesQuotes_visual.png)
- *This avoids the collision with possible commands* - also $ worsk
similar to an f string \>\[!example\]- \>#!/bin/bash myname=“Jay” myage:
40 echo “Hello, my name is $myname” echo “Im
$myage >\>\[!tip\]- Result >\> Hello, my name is Jay Im 40 years old ## Sub-shell \*\*It allows to execute command in the background\*\* Variables can also nested otuputs of the functions \*\*variable=$(command)\*\*

> \[!example\]- files=$(ls) echo files \>\[!tip\]- Result
> \>360px-Sweden_in_European_Union.svg.png bash-test bookmarks.sh books
> dzieniczek.pdf dzienik.pdf For International \>

## Constans

**Variables like $USER are constants** -
<mark style="background: #FF5582A6;">[env](/Linux/env) gives
u a list of all envairomental variables! </mark> - TO add somthitn to
the
*P**A**T**H* \* *e**x**p**o**r**t**P**A**T**H* = /*u**s**e**r*/*l**o**c**a**l*/*b**i**n*:PATH\*

-   To delete Varaible use **unset**
