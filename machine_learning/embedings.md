---
date:: 2023-07-14
type:: Data 
type:: Ai
---
## Embedings 
- They are ussualy build by implemeting the large dataa  set puting thehm ino a cevtio fo categories and indexing based one the main node 
- **Baiscily a vector of vectors semanticly similar**
>[!example]-
>![EmbedingMap_visual.png](/static/EmbedingMap_visual.png)
## Creation
![CreationEmmbeding_visual.png](/static/CreationEmmbeding_visual.png)
## Usage
- **Semantic Search**
	- search engines traditionally work by searching for overlaps of keywords. By leveraging vector embeddings, semantic search can go beyond keyword matching and deliver based on the query’s semantic meaning.
    
- **Question-answering applications** 
	- by training an embedding model with pairs of questions and corresponding answers, we can create an application that would answer questions that have not been seen before.
    
- **Image search** 
	- vector embeddings are perfectly suited to serve as the basis for image retrieval tasks. There are multiple off-the-shelf models, such as CLIP, ResNet, and more. Different models handle different types of tasks like image similarity, object detection, and many more.
    
- **Audio search**
	- by converting the audio into a set of activations (an audio spectrogram), we produce vector embeddings that can be used for audio similarity search.
    
- **Recommender Systems**
	- we can create embeddings out of structured data that correlate to different entities such as products, articles, etc. In most cases, you’d have to create your own embedding model since it would be specific to your particular application. Sometimes this can be combined with unstructured embedding methods when images or text descriptions are found.
    
- **Anomaly detection** 
	- We can create embeddings for anomaly detection using large data sets of labeled sensor information that identify anomalous occurrences.



>[!quote] [vector_databse](/databases/vector_databse.md) 