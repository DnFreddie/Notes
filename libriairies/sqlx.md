---
date:: 2023-07-13
type:: Rust
---
## Sqlx-libary 
- Trully asynchrous 
- Compile time checked queries 
- Database Agnosic
- Runtime Agnostic. 
	- Works on different runtimes (async-std / tokio / actix) and TLS backends (native-tls, rustls).
- Automatic statement preparation and caching
- Transport Layer Security ([TLS_SSL](/protocols/TLS_SSL.md)) where supported (MySQL and PostgreSQL).
## Migrations
1. First establisch the requaierd for migrration to happen in the .env file 
	ex. *DATABASE_URL=postgres://postgres:mysecretpassword@localhost:5432/postgres*
2. Create a migration file 
	1. **sqlx migrate add initial-tables**
	 This command creates a new file migrations/<timestamp>_<name>.sql for us to write the migration script. Open this file and add the following SQL statements to create our tables
3.  Applay migration using sqlx client 
	1. **sqlx migrate run**



 
==[Docks](https://github.com/launchbadge/sqlx)==

[Pages/posgres.html]()
>[!quote] 