---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: git
---

## Seting up github

1.  [ssh](/Notes/posts/protocols/ssh)
2.  setinging user

``` bash
git config --global user.name 'aura'
```

### Git Log

*To better display the commits*

``` bash
git log --oneline 
```

``` bash
git config --global user.email DefnotFreddie@defnotfreddie@gmail.com
```

> \[!tip\]- It has to be u’re gti name
> ![Pasted_image_20230903144619.png](/Notes/Pasted_image_20230903144619.png)

### Creating the branch

``` bash
git switch -c <branch name>
```

### Add files

-   It add files that haven’t been added yet

``` bash
git -A . 
```

-   **Add interactivle**

``` bash
git add -p 
```

> \[!example\]-
> ![Pasted_image_20240508110725.png](/Notes/Pasted_image_20240508110725.png)

### Pulling submodels

``` bash
git submodule update --init
```

### Merge vs Rebase

> \[!bug\] Use rebase locally
> ![Pasted_image_20240508123416.png](/Notes/Pasted_image_20240508123416.png)

#### Undo the megre

``` bash
git merge --abrot
```

``` bash
git rebase --abrot
```

> \[!quote\] [docker](/Notes/posts/Linux/Docker/docker)
