+++
title = 'Nvim'
date = 2024-10-17T23:03:03+02:00
draft = false
+++


## Passing arguments to the nvim could be done by just appending the string 

```bash 
v() {
    if [ "$#" -eq 1 ];then # 
  if test -d "$1";then 
    nvim "$HOME/$dir" +":cd %:p:h" +"Explore"

  else 
    nvim "$1" +':cd %:h'
  fi
else 
    nvim . +":cd %:p:h" +"Explore"
fi
}

```
