+++
title = 'git'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Seting up github 

1. [ssh](/protocols/ssh.md) 
2. setinging user 
```bash
git config --global user.name 'aura'
```
### Git Log 
*To better display the commits*
```bash 
git log --oneline 
```

```bash
git config --global user.email DefnotFreddie@defnotfreddie@gmail.com
```
>[!tip]- It has to be u're gti name
>![Pasted_image_20230903144619.png](/Pasted_image_20230903144619.png)


### Creating the branch 

```bash
git switch -c <branch name>
```


### Add files 
- It add files that haven't   been added yet
```bash
git -A . 
```

- **Add interactivle**
```bash
git add -p 
```

>[!example]-
>![Pasted_image_20240508110725.png](/Pasted_image_20240508110725.png)


###  Merge vs Rebase 
>[!bug] Use rebase locally 
![Pasted_image_20240508123416.png](/Pasted_image_20240508123416.png)



#### Undo the megre 
```bash
git merge --abrot
```


```bash
git rebase --abrot
```


>[!quote] [docker](/obisdian_ntoes/notes_obsidian/Linux/Docker/docker.md)