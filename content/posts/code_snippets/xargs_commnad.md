---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Xargs
---

### Run in parrarel

> `-P` for pararel `-r` *–no-run-if-empty*
>
> if there are no input items.
>
> if find produces no results, xargs will not execute the command that
> follows it.

``` bash
find  test/  -print0 | xargs -0 -r -P 4
```

### Run from the script

``` bash
    export -f pretty_print
    find "$target" -type f -print0 \
      | xargs -0 -I {} -P 4 bash -c 'format_local "$@"' _ {}
    unset -f pretty_print
```

## Schema

``` bash
find . -type f | xargs -I {} mv {} {}.md
```

------------------------------------------------------------------------

-   [find](/Notes/posts/Linux/commands/find)
-   \[bash_MAIN\]({{\< ref “posts/Linux/commands/bash_MAIN.md”\>}})
-   [Comptia Objectives](/Notes/posts/Comptia_Objectives)
