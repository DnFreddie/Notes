---
date: "2024-10-15T21:25:55+02:00"
draft: false
title: Yq
---

[README](https://github.com/mikefarah/yq#)

*Can be installed wiht go as single binary :)*

``` bash
go install github.com/mikefarah/yq/v4@latest
```

## Options

[Article](https://www.baeldung.com/linux/yq-utility-processing-yaml)

-   **`-i` changes in place**

``` bash
yq -i '.a.b[0].c = "cool"' file.yaml
```

-   **Convert json to yaml**

``` bash
yq -Poy sample.json
```

-   **pipe from stdin**

``` bash
yq '.a.b[0].c' < file.yaml
```

``` bash
yq '.. | .user_name? // empty | select(. != null)' playbook.yaml
```

-   `..` Iterate over the **entire Yaml sturcture**
-   `?` **nil** if empty or error

``` bash
yq '.[] | select(.roles) | .roles[].user_name' playbook.yaml
```

### Explanation:

-   `.[]`: Iterates over the top-level elements.
-   `select(.roles)`: Selects only the elements that have the `roles`
    key.
-   `.roles[].user_name`: Extracts the `user_name` field from the
    objects inside the `roles` array.
