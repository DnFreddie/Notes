---
date:: 2023-08-02
type:: network+
---
## Read 
- Once the connection was put to the [[accept_ queue]]   we use the [systemcall](/systemcall.md) **Accept** to pop it from the que and return file description represitenting the coonection (*now backend has a poinbter to the connection*) 
- Now the backaend  [systemcall](/systemcall.md)  **recv**  
- And call andother [systemcall](/systemcall.md)  **read**
	We **copy** them to the [[system application layer]]
	- This are alll encryted raw bytes 
	- ==We dont now yet weather its a request==
	- Also we have to take care of read time since [recive_queue](/recive_queue.md) has a  limited size 
 $$1$$
## Decrytp 
Since i did the  [TLS_session](/TLS_session.md)   eariler i can get **symetric key** and exchange it wiht the client 
 - This beeing handeld partially by the [TMP](/TMP.md)
- Then the packet is beeing **copied** (*check decryption in place*) and decrepted 
## Pharsing 
We determine the protocol and being pharsing acordingly 
 Issuess
  - It may be that we dont see the full request (it does not fit the [bandwidth](/obisdian_ntoes/notes_obsidian/ZPythonref/DjangoFramework/Network+/Phisicall/bandwidth.md))
	  - THen u have to wait for the request top be fully get 

## Decoding 

- What type of encodin the message has it it ASKI or UTF-8 iot based of the language of the backend 
	- Decopressing compressed parts of the request  
	- Also **desiralization happens here**
  

## Process 
We **fire the evnent** the callBack happen and we get the request 









>[!quote] [request_journey_kernel](/request_journey_kernel.md)