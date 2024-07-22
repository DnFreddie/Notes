+++
title = 'Baisic comandds.vim'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    Vim has two modes 
Insert and normal
to access insert u need to press 3 bindings 

**ga**
to come backward to the last inserted change 

- Use `t{character}` to move the cursor just before the next occurrence of a character (think of `t{character}` of moving your cursor until that character).

**f {character}**
Let u move ti tge *next* occurrence of and character 
if we and **;**
it moves to the another instance of chosen letter 
**F {CHaracter}** 
to find *previous* occurrence of and character 

**U**
undo conntent
**i** 
goes before the character
**shift + i**
goes to the beginning of the line 
**a** 
goes after the courser 
**shift + a**
moves to the end of the line 
**o** 
opens and create a  new line
**shift + o**
creates a new line above 

---
**shift + H**
go on top of the screen 
**shift + m**
go to the middle
**shift + l** 
go to the bottom

---
**l** 
move right
**h**
move left 
**j**  
move down
**k** 
move up

----
**w** 
jump one character 
*shift + w*
jump one WORD ahead 
**e** 
jump forward last character 

**Ge**
jump to he end of the previous word 


**b** 
bump backward fir character 

---
**shift + $** 
move to the end of the line 
**0** 
move to the star of the line 

---
**gg**
move to the start of the document 
**shift +g**

---
**{**
jump to the previous paragraph 
**}**
jump to the next paragraph 

---
**u** 
undo the change 
dd 
delete the line 
r
replaces the text 
v 
to  select the text 

---
g+shift+u
change to upper case 

**s** 
deletes and put u into edit mode 

**y** 
coy the line 

**p** 
to paste 

 **>>** 
 to intend the text 
 **<<** 
 to undo intend  
 **/** 
 search 
 **n**
 repeat search 

**N to the previous Search**

**: %s/word/circle/g**
replace every word 

<mark class="hltr-reds">ad gc if u want to ask for u're  permission  if u want to replace a word </mark>

**{} number of line 