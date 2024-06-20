---
date:: 2023-07-08
type:: Rust
---
## Runtime builder 
U can customioze the runtime by 
>[!tip]- 
>Tokio runtime builder allows you to configure various aspects of the runtime, such as the number of worker threads and other runtime settings.

#### code
```rust
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .expect("Failed to create Tokio runtime")
        .block_on(body)
}
```

$$1$$
## Databases
- **Compile time safty**
	- In most libres the language will acces data during **Run Time** ex tokio-postgres 
	- Hovere libres  such as **diesel** or **[sqlx](/libriairies/sqlx.md)** will do it on compile time
		- It create a *representation of database schema* as rust code or uses *procedular macros* to see that [data_py](/obisdian_ntoes/notes_obsidian/ZPythonref/data_py.md)  is correct 
- Speed 
	- [piplining_db](/databases/piplining_db.md)

>[!quote] [Rust Projects](/obisdian_ntoes/Rust/Rust Projects.md)