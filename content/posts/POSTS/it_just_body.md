+++
title = 'Its just a body Ansible'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

Mark your systmes

With the endless anthropomorphization of AI and technology in general, we often think that technology is starting to become
However, we rarely realize that what surrounds us are servers millions of them, like an army of starwars clones.
From a server's perspective, it doesn’t fully comprehend what is happening.
A server doesn't know that it is a server unless we give it a name or some identifier.
You might name your favorite virtual machine "Janey" and live happy ever after.
But what happens when you have 5000 Janeys or an entire cluster of them?

### Create a envairoment 
It' important to know were do we work are we in production is this 
a main cluster were it was spawn etc 
In general the more inforamtion does the node holds the easier is to trouble shoot 
I ansible we can achive that via setting vairables inside the invernory itself 
In previous post  i metion groups as the first way to gropu ur'e machines 
and this is the most baisc yet powerfull feture 
for know lets say whe have to envairoments `home_lab` `production`

```toml
[home_lab]
proxy
test
jimmy
[production]
webserver1
webserver2
webserver3

[]
atlanta
raleigh

[southeast:vars]
some_server=foo.southeast.example.com    
type=test
halon_system_timeout=30
self_destruct_countdown=60
escape_pods=2

[usa:children]
```
Ansible is so grate taht u can give it diffren formats like yml and json as inventory 
Aspecialy json is handy if u want to grab a list of machines from some sort of the api call 
You can also provide adtional variables to the hostst *like escape_pods 2* thta can be later used for matching condition

Later in the playbook we can easiy chose only the ones we need 
```yaml
---
- hosts: test
  tasks:
    - name: Filter hosts with specific number of nodes
      debug:
        msg: "Hostname: {{ inventory_hostname }}"
      when: hostvars[inventory_hostname]['nodes'] == 2
```

Remember to define the dynamic groups as empty in the static inventory file elswere the ansible will error 
When it comes to dynamical inveries u don't have to write this yourself it;s like with roles or collecitons 
You can just downloawd a inventories form docker up to the  gitlab runners 
```bash
ansible-doc -t inventory -l
```
Herese the example documentation for the [Docker Containers inventory](https://docs.ansible.com/ansible/latest/collections/community/docker/docker_containers_inventory.html)


### Who touched it ?



