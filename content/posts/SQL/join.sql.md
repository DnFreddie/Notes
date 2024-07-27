+++
title = 'join.sql'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    **Used for combaibning tables**
*Formula*

	select *
	 from orders 
	join customers
	 ON orders.customer_id = customers.customer_id;


others [cross join.sql]({{< ref "posts/SQL/cross_join.sql.md" >}}) 