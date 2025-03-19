---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Is null
---

Unknown values are indicated by `NULL`.

It is not possible to test for `NULL` values with comparison operators,
such as `=` and `!=`.

Instead, we will have to use these operators:

-   [`IS NULL`](https://www.codecademy.com/resources/docs/sql/operators/is-null?page_ref:%20catalog)
-   [`IS NOT NULL`](https://www.codecademy.com/resources/docs/sql/operators/is-not-null?page_ref:%20catalog)

To filter for all movies *with* an IMDb rating:

    SELECT nameFROM movies WHERE imdb_rating IS NOT NULL;
