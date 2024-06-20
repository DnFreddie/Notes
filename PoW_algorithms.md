---
"date:": 2023-11-06
"type:": Rust
---
##  Proof of work algorithm 

- Take a currrent block header 
- Append a nonce sterting at nonce = 0
- Hash data from #1 #2 
- Check hash versus target (provided by protocol)
- If hash < target puzzle is solved 
	- U got reward 
- Else restart process form step #2 but **nonce +=1**

 >[!quote] [binary search](/Algorithms/binary search.md) 