

1. **<mark class="hltr-sdsafsafaf">FROM</mark>** the appropriate table 

2. **<mark class="hltr-code-">SELECT</mark>** {Chose column(s) you want}

1. **<mark class="hltr-code-">WHERE</mark>** - a certain condition is met 

This is suggested order in which you wrote your SQL queries .

Start big(data table ) and go small (specyfic codition )

![baiscqueresSQLvisual.png](/static/baiscqueresSQLvisual.png)
<mark class="hltr-grses">Queries</mark>

Select * from employees where employees = male ;


<mark class="hltr-code-">Statement </mark>
***Text recognized as command***


<mark class="hltr-blood">*Statements always and with semicolons ;*</mark>
`CREATE TABLE table_name (  
   column_1 data_type,  
   column_2 data_type,  
   column_3 data_type  
);`
[statement.sql](/obisdian_ntoes/notes_obsidian/SQL/statement.sql.md)

----
<mark class="hltr-code-">Clause</mark> (eg.`CREATE TABLE`)

Clauses can also be referred as commands

<mark class="hltr-blood">Clauses are written in capital letters </mark>

---- 

1.  `table_name` refers to the name of the table that the command is applied to.
2.  `(column_1 data_type, column_2 data_type, column_3 data_type)` is a _parameter_. 
 <mark class="hltr-szopen">Paramiter</mark>
 
 **list of columns, data types, or values that are passed to a clause as an argument. Here, the parameter is a list of column names and the associated data type.

<mark class="hltr-grses"><mark class="hltr-sdsafsafaf">Create</mark></mark>
creates table from the scratch

`CREATE TABLE celebs (  
   id INTEGER,  
   name TEXT,  
   age INTEGER  
);`

<mark class="hltr-try">**Use**</mark>
**it directors u to a practical database** 

<mark class="hltr-try">**Drop** </mark>
**Deletes the database** 

<mark class="hltr-grses">Insert </mark>

**inserts a new row into the statement**

**insert into clause that adds the specified row or rows **

<mark class="hltr-grses">Values </mark>
Clause that indicates the data being inserted

*INSERT INTO celebs (id, name, age)  
VALUES (1, 'Justin Bieber', 22);`


<mark class="hltr-grses">Alert table
</mark>
ads a new colummne to a table 
*ALTER TABLE celebs*  

Constrains 
\
<mark class="hltr-grses">As</mark> 
Keyword that allows u to rename a column or table 

<mark class="hltr-grses">**Select distinct**</mark>

[SQLoperatrors](/obisdian_ntoes/notes_obsidian/SQL/to revise/SQLoperatrors.md)
It only select distinct values such as 

*select distinct e_gender from employee*

<mark class="hltr-try">Text is an indicator of data type</mark>

<mark class="hltr-grses">Null </mark>
***Specials value that represents missing or unknown data***


<mark class="hltr-grses">Update</mark>
edits a row in a table 
`PDATE celebs`  
`SET twitter_handle` ``= '@taylorswift13'`\`  
`WHERE id = 4;<mark class="hltr-grses">Delete from </mark>

clause that lets u delete the table 



<mark class="hltr-grses">Is null </mark>

A condition that returns true when the value is null (false )

Eg.
`DELETE FROM celebs 

WHERE twitter_handle IS NULL;

SELECT * FROM celebs;`

![1](/obisdian_ntoes/notes_obsidian/SQL/to revise/1.md)