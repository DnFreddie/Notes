+++
title = 'smart_transactions'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ---
"date:": 2023-11-08
"type:": crypto
---

## Smart Transactions 

Its the execution of the function over blockchain 
- If the instruction fails to be executed Therese no trace on the blockchain it does *not change the state of the cluster* 
	- The issue comes when its the second or the third function in the transaction
- The first person in a array of payers pays for the entire transactions 

### Transactions 

 Transaction instruction contains
 - an **identyfire of the program** to invoke
 - an ==array of accounts== that will be read and/or **written**
		 - its needed for the system to be able to run it in parrarel(*only if there are two wirtes to same acount we cant run it in parrarel *)
 - data structured as a byte array that is specified to the program being invoked 
 
>[!quote]