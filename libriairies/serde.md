---
date:: 2023-07-12
type:: Rust
---
## Serde 
- Serde does not provide parshing of any psecyfic data by itself 
	- to pharse specyfic data u need to download special create ex. *serde_json* 
	- In order to itroduce new data format u have to introduce **Serializer**
>[!tip] writing u're own serializer 
>my imporve performnce due to better opptimise algorithmic choices  

## Code 
In order to not mmanully singing how the serialization should be performed for each tipe we use macrio up front
```rust
#[derive(Serialize)]
#[derive(Derialize)]
pub struct FormData{
email:String,
name:String,
}
```



>[!quote] [monomorphization](/compilation_porcess/monomorphization.md)