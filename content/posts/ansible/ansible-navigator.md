---
title: 'Ansible-Navigator'
date : 2025-03-04T09:38:51+01:00
draft: false
---

# Generate a sample config
> Don't pipe it direcly because it gets parsed imidiatly xdddd  and it's empty
>
> Use pull policy to be missing and also rember to delte  # + space to uncoment
```bash
ansible-navigator settings  --gs  --pp never > tmp; mv tmp ansible-navigator.yml
```

f to fileter
`--eei ` overites the imgae for the collections 


So  baicly the env is run in a rootles podman container 
in the root namescapec of the containeare 
therefore the exeuctei is stating that the playbook is run as root instaed of 
run as  anorma user 

# Collection should be in /collection folder  that then binds it to the container volume


## host_vars group_vars
