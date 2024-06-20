---
date:: 2023-07-14
type:: Data 
---
## Vector databaes 
IT provideds **approxime resutls**
![VectorDatabseModel_visual.png](/static/VectorDatabseModel_visual.png)
- **Indexing**: The vector database indexes vectors using an algorithm such as PQ, LSH, or HNSW . This step maps the vectors to a data structure that will enable faster searching.
    
- **Querying** 
	- compares the indexed query vector to the indexed vectors in the dataset to find the nearest neighbors (applying a similarity metric used by that index)
    
- **Post Processing**
	- In some cases, it retrieves the final nearest neighbors from the dataset and post-processes them to return the final results. 
	- This step can include re-ranking the nearest neighbors using a different similarity measure
$$1$$
## Creation 
1.  First, we use the **[embedings](/machine_learning/embedings.md) model** to create **vector embeddings** for the **content** we want to index.
2. The **vector embedding** is inserted into the **vector database**, with some reference to the original **content** the embedding was created from.
3.  When the **application** issues a query, we use the same **embedding model** to create embeddings for the query, and use those embeddings to query the **database** for _similar_ vector embeddings
Its a databae struckterd of [embedings](/machine_learning/embedings.md) 
>[!example]-
![VectorDatabaseStructure_visual.png](/static/VectorDatabaseStructure_visual.png)


$$2$$

## Features  
 - Easy data menagment
	 - manpulating datbase its eascy becouse neural networks takes care of the [[process]] 
- **Metadata storage and filtering**
	*metadata* associated with each vector entry can be stored . Users can then query the database using *additional metadata filters* for finer-grained queries.
- **Scalability**(problemactic when excesive data storege)
	- Vector databases are designed to scale with growing data volumes and user demands, providing better support for distributed and parallel processing. Standalone vector indices may require custom solutions to achieve similar levels of scalability (such as deploying and managing them on Kubernetes clusters or other similar systems).
    
- **Real-time updates**
	-  support for real-time data updates, allowing for dynamic changes to the data

$$3$$

>[!quote] [random_projection](/machine_learning/random_projection.md)