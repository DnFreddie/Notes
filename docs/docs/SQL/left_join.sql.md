---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: left join.sql
---

    SQL lets us do this through a command called [`LEFT JOIN`](https://www.codecademy.com/resources/docs/sql/commands/left-join?page_ref: catalog). A _left join_ will keep all rows from the first table, regardless of whether there is a matching row in the second table.

> \[!example\] SELECT \*  
> FROM table1  
> LEFT JOIN table2  
>   ON table1.c2 = table2.c2;
