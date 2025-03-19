---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Like
---

## Like

[`LIKE`](https://www.codecademy.com/resources/docs/sql/operators/like?page_ref:%20catalog) can
be a useful operator when you want to compare similar values.

The `movies` table contains two films with similar titles, ‘Se7en’ and
‘Seven’.

How could we select all movies that start with ‘Se’ and end with ‘en’
and have exactly one character in the middle?

    SELECT * FROM moviesWHERE name LIKE 'Se_en';

-   `LIKE` is a special operator used with the `WHERE` clause to search
    for a specific pattern in a column.

-   `name LIKE 'Se_en'` is a condition evaluating the `name` column for
    a specific pattern.

-   `Se_en` represents a pattern with a *wildcard* character.

The `_` means you can substitute any individual character here without
breaking the pattern. The names `Seven` and `Se7en` both match this
pattern.

------------------------------------------------------------------------

## Like 2

Like II The percentage sign **%** is another wildcard character that can
be used with LIKE.

This statement below filters the result set to only include movies with
names that begin with the letter ‘A’:

SELECT \* FROM movies WHERE name LIKE ‘A%’; % is a wildcard character
that matches zero or more missing letters in the pattern. For example:

A% matches all movies with names that begin with letter ‘A’ %a matches
all movies that end with ‘a’ We can also use % both before and after a
pattern:

SELECT \* FROM movies WHERE name LIKE ‘%man%’; Here, any movie that
contains the word ‘man’ in its name will be returned in the result.

LIKE is not case sensitive. ‘Batman’ and ‘Man of Steel’ will both appear
in the result of the query above.

Different use cases of the LIKE operator

LIKE c% finds any values that start with the letter ‘c’ LIKE %c finds
any values that end with the letter ‘c’ LIKE %re% finds values that have
‘re’ in any position LIKE *a% finds any values that have the letter ‘a’
in the second index LIKE a*%\_% finds any values that start with ‘a’ and
are at least 3 characters in length. LIKE a%r finds any values that
start with ‘a’ and end with ‘r’.
