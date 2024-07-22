+++
title = 'union.sql'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    <mark class="hltr-pomarancza">Stack one databaes on the other</mark>

>[!example]
>SELECT *  
FROM table1  
UNION  
SELECT *  
FROM table2;

**Restrictions** 

- <mark class="hltr-reds">Tables must have the same number of columnds</mark>

- <mark class="hltr-reds">The columns ust have the same</mark> [[data type.py]] <mark class="hltr-reds"> in the same order as the first table</mark>