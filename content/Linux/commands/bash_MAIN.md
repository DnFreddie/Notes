---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Bash Main
---

[Docs](https://tldp.org/)

## Seitng up defualt values with `:`

*set default values for variables without performing any action*

``` bash
: ${VAR:=default_value}```


## Bash string manipulation  

> **Perom  replacment**
```bash 
# ${parameter/pattern/string}
 selected="my_session:123:456"
session_name="${selected//:/-}"
echo $session_name  # Output: my_session-123-456
```

> **Delte from match to the end**

``` bash
# %% to find the longest possilbe match 
session_name="${selected%%:*}"
```

### Checking if the output was from stdin or as cmd args

``` bash
if [[  -t 0  ]]; then 
    printf "this was provided from cmd args\n"
fi

if [[  ! -t 0  ]]; then 
    printf "this was provided from pipe\n"
fi 
```

### Printitn mulitple values

``` bash
printf -v sep  '%.0s-' {1..15};)
```

### Checking the lenght of the array

``` bash
${#parameter}
```

------------------------------------------------------------------------

> Tip
>
> *Functions are the only way to change status of an existing shell*

[Fucntions](/scriptss/Functions)

| [Case stament](/scriptss/Case_statment_bash) |
|----------------------------------------------------------|
| [While loop](/scriptss/while_loop_bash)      |

[Variables](/scriptss/Variables)

|                                                                    |
|--------------------------------------------------------------------|
| [Bash redirecition](/Linux/commands/redirecrtion_bash) |

\[xargs_commnad\]({{\< ref “posts/code_snippets/xargs_commnad.md”\>}})
