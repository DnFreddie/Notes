<mark class="hltr-pomarancza">This</mark> [statement.sql](/obisdian_ntoes/notes_obsidian/SQL/statement.sql.md)  <mark class="hltr-pomarancza">allows us to perform a separate query</mark> 
	*(such as aggregating customer’s subscriptions)*


 We are putting a whole first query inside the parentheses `()` and giving it a name. After that, we can use this name as if it’s a table and write a new query _using_ the first query.

>**SELECT customer_id,  
   COUNT(subscription_id) AS 'subscriptions'  
FROM orders  
GROUP BY customer_id;
WITH previous_results AS (  
   SELECT ...  
   ...  
   ...  
   ...  
)  
SELECT *  
FROM previous_results  
JOIN customers  
  ON _____ = _____;
WITH previous_query AS (

   SELECT customer_id,

      COUNT(subscription_id) AS 'subscriptions'

   FROM orders

   GROUP BY customer_id