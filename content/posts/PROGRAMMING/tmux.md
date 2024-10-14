+++
title = 'Tmux'
date = 2024-10-09T18:42:53+02:00
draft = false
+++

## Run tmux without the config

```bash 
tmux -f /dev/null

```

## Markers
`M` near the pane marked it as **selected**

### Breaking panes
```.tmux.conf
bind-key !k
```
### Joining-panes

```bash
join-pane -t <optional session name>:<destination pane
``` 


