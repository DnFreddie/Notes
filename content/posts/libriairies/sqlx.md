+++
title = 'sqlx'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Sqlx Library
[Docs](https://github.com/launchbadge/sqlx)
- Truly asynchronous
- Compile-time checked queries
- Database agnostic
- Runtime agnostic
	- Works on different runtimes (async-std / tokio / actix) and TLS backends (native-tls, rustls)
- Automatic statement preparation and caching
- Transport Layer Security ([TLS/SSL]({{< ref "posts/protocols/TLS_SSL.md" >}})) where supported (MySQL and PostgreSQL)

## Migrations
1. First, establish the required settings for migration to happen in the `.env` file:
    - Example: `DATABASE_URL=postgres://postgres:mysecretpassword@localhost:5432/postgres`
2. Create a migration file:
    1. **sqlx migrate add initial-tables**
       This command creates a new file `migrations/<timestamp>_<name>.sql` for us to write the migration script. Open this file and add the following SQL statements to create our tables.
3. Apply migration using the sqlx client:
    1. **sqlx migrate run**




