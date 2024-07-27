+++
title = 'PoW_algorithms'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

##  Proof of work algorithm 

- Take a currrent block header 
- Append a nonce sterting at nonce = 0
- Hash data from #1 #2 
- Check hash versus target (provided by protocol)
- If hash < target puzzle is solved 
	- U got reward 
- Else restart process form step #2 but **nonce +=1**

 >[!quote] [binary search]({{< ref "posts/Algorithms/binary search.md" >}}) 