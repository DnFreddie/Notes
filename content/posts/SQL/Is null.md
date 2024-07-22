+++
title = 'Is null'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    
Unknown values are indicated by `NULL`.

It is not possible to test for `NULL` values with comparison operators, such as `=` and `!=`.

Instead, we will have to use these operators:

-   [`IS NULL`](https://www.codecademy.com/resources/docs/sql/operators/is-null?page_ref=catalog)
-   [`IS NOT NULL`](https://www.codecademy.com/resources/docs/sql/operators/is-not-null?page_ref=catalog)

To filter for all movies _with_ an IMDb rating:

```
SELECT nameFROM movies WHERE imdb_rating IS NOT NULL;
```