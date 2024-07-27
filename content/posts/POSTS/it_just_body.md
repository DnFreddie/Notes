+++
title = 'Its just a body (Ansible)'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

*Mark your systmes*

With the endless anthropomorphization of AI and tech, we often think that technology is starting to become more human-like.

However, we rarely realize that what truly surrounds us are millions of servers, like an army of starwars clones.

From a server's perspective, it doesn’t fully comprehend what is happening.
A server doesn't know that it is a server unless we assign it a name or identifier.

You might name your favorite virtual machine "Janey" and live happily ever after.
But what happens when you have 5,000 Janeys or an entire cluster of them?


### Creating an Environment

It's important to know where we are working whether it's in production, a main cluster, or some other environment.
In general, the more information a node holds, the easier it is to troubleshoot.
In Ansible, we can achieve this by setting variables within the inventory itself.
In a previous post, I mentioned groups as the first way to organize your machines.
This is the most basic yet powerful feature.
For now, let's say we have two environments: `home_lab` and `production`.

```toml
[home_lab]
proxy
jimmy
test

[production]
webserver1
webserver2
webserver3


[production:vars]
some_server=foo.southeast.example.com    
type=test
halon_system_timeout=30
self_destruct_countdown=60
escape_pods=2

```

Ansible is so great that it supports different formats for inventory, such as YAML and JSON.

JSON is especially handy if you want to grab a list of machines from an API call.

You can also provide additional variables to the hosts, like `escape_pods: 2`, which can be used for matching conditions later.
In the playbook, we can easily choose only the hosts we need based on these variables.


```yaml
---
- hosts: production
  tasks:
    - name: Filter hosts with specific number of nodes
      debug:
        msg: "Hostname: {{ inventory_hostname }}"
      when: hostvars[inventory_hostname]['nodes'] == 2
```

### Our enviaroment is not stable 

As I mentioned earlier, when we scale up, we start dealing with dynamic IPs, constant rotation of instances, and varying request loads.

This can make it difficult to pinpoint the true location of boxes  this can truly create horrible mess 

Fortunately, Ansible offers a solution to this complexity through **dynamic inventories.**

With dynamic inventories, you don’t have to write the code yourself much like using roles or collections.

You can download inventory scripts or plugins for various platforms, from Docker to GitLab runners.

Just remember to define dynamic groups as empty in the static inventory file; otherwise, Ansible will throw an error.


```bash
# tooo list all the availabe ones
ansible-doc -t inventory -l
```
Herese the example documentation for the [Docker Containers inventory](https://docs.ansible.com/ansible/latest/collections/community/docker/docker_containers_inventory.html)

### Sometimes u have to do something custom

Fortunately, creating something tailored to your needs is straightforward.
You’re not restricted to using Python. 

You can use any language that supports outputting JSON to standard output.

To create a dynamic inventory, simply write a script in your preferred language that generates JSON and outputs it.

You just need to specify the path to the script or binary in your Ansible configuration.
>Herese a small example:
```go 
package main

import (
	"encoding/json"
	"fmt"
	"os"
)


// Represents  hosts and variables.
type Group struct {
	Hosts []string          `json:"hosts"`
	Vars  map[string]string `json:"vars"`
}

func main() {
	inventory:= Group{
			Hosts: []string{"host1", "host2"},
			Vars: map[string]string{
				"var1": "value1",
				"var2": "value2",
			},
		}

	output, err := json.MarshalIndent(inventory, "", "  ")
	if err != nil {
		fmt.Println("Error:", err)
		os.Exit(1)
	}

	fmt.Println(string(output))
}

```
```bash 
# then build it 
go build main.go

# and run as a inventory to the playbook

ansible-playbook -i main {playbook name }
```



### Who Touched It?
Imagine you have set up your inventory, executed your favorite playbook, and everything seems nice and stable.
Then u come back later the same day.
And, the system doesn't work as expected.
You start asking around to find out what happened, but nobody knows anything.
If only you knew that you could hash your files to track changes...


Fortunately, the Ansible copy module has a `checksum` parameter.

By default, it uses the SHA-1 algorithm, but you can provide the hash and the hashing method upfront.

This is an excellent practice to verify your files before running the playbook.

If something goes wrong, you can easily confirm if the system was altered by someone else and ensure you're not the source of the issue.

Example:
Let's say you have a configuration file that you need to copy to a remote server.
You can use the Ansible copy module with the checksum parameter to ensure the file hasn't been tampered with.

```yaml
- name: Copy configuration file with checksum
  ansible.builtin.copy:
    src: /path/to/local/config/file.conf
    dest: /path/to/remote/config/file.conf
    checksum: sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef

```
In this example, the checksum ensures that the file you're copying matches the expected hash.
If the file has been altered, Ansible will detect the discrepancy, helping you identify any unauthorized changes.

### In a System, Everyone Touches Everything

Files and systems are constantly moving and changing, making them hard to track.

Sometimes, you work on a machine for a while, then leave it for three weeks, only to return and struggle to figure out what happened.

Remember that even a simple accidental `touch` command can change the modification date of a file, complicating the tracking process.

As engineers, we usually rely on notes to solve this issue, but it would be even better if we could document changes directly within our systems?

A good story adds clarity and context, making everything more manageable.

That's why Ansible comes with a templating engine, a tool you might have used early in your web development career before moving to the shiny world of JavaScript and forgetting about it. 

This  [Jinja](https://jinja.palletsprojects.com/en/2.10.x/) engine can execute Python code within itself, providing a powerful way to maintain and document your systems.

I’ll show you a useful template that’s great to have.

```j2

# Configuration file generated by Ansible
# Date: {{ ansible_date_time.iso8601 }}
# System Name: {{ inventory_hostname }}
# Change Description: {{ change_description }}
# Environment: {{ environment }}

# File Hashes:
{% for file, hash in file_hashes.items() %}
# {{ file }}: {{ hash }}
{% endfor %}


```
First, record the system name and the date when the modification occurred.

Then, log what changed, such as the installation of Nginx or the creation of new files.

For file creation, store their hashes.

You can write this information to /var/log and later rewrite it or store a copy on your local machine.

However, managing this for thousands of entries might be problematic.

Additionally, log other variables, such as whether it was a testing or production system, or if it was a routine scan.

The more information you provide, the better.


```yaml 

- name: Generate configuration with detailed information
  hosts: all
  vars:
    change_description: "Installation of Nginx"
    environment: "production"
    file_hashes:
      "/etc/nginx/nginx.conf": "sha256:1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
      "/var/www/html/index.html": "sha256:abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890"
  tasks:
    - name: Apply configuration using a template
      template:
        src: /path/to/local/template.j2
        dest: /var/log/ansible_changes{current date}.log
```

### Never Get Lost Again
As you gain experience in tech and programming, you'll frequently transition between different environments.

It’s crucial not to fear the unfamiliar but to understand where you are and what has changed.

This approach will help you avoid confusion and frustration.

*There’s nothing worse than having something work and not knowing why, or having something fail and not understanding what changed.*

By documenting your path and changes, you can navigate through your work with clarity and confidence.

Mark your path and stay informed.

Peace out.
