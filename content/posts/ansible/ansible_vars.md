+++
title = 'Ansible Varaibles'
date = 2024-07-22T09:10:24+02:00
draft = false
tags = ["automation"]
categories = ["ansible"]
+++

# Registers


*Capture the output of the play inside the variable*

``` yaml

- name: Register Playbook
  hosts: proxy
  tasks:
    - name: Run a command
      command: uptime
      register: server_uptime

    - name: Inspect the server_uptime variable
      debug:
        var: server_uptime

    - name: Show the server uptime
      debug:
        msg: "{{ server_uptime.stdout }}"

```

# Ansible special variables

[Docs](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html)

*The two most important ones are*

-   **ansible playhostall**
-   **ansible playhost** *This is holds what nodes where successful*

## Filtering the nodes

-   *Shorter one*

    ``` j2
    {{ ansible_play_host_all | select('not in', ansible_play_hosts) | join(', ') }}
    ```

-   *Longer one*

    ```j2
    {% for host in ansible_play_host_all %}

    {% if host not in ansible_play_hosts%}

    {{host}}

    {% endif %}

    {% endfor %}

    ```
# Ansible variables
### Varialbe prcencece
[Docs](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#variable-precedence-where-should-i-put-a-variable)

**The most important  is the `--extra-vars`**
```bash
(for example, -e "user=my_user")(always win precedence)

```
### Including external variables

*Just use **var files** to import them from the another **yml** file*
Keep in mind that **vars files** loads the variables right at the start
of the playbook\*\*.

### Dynamic Varaibles

You can also use the **include vars** module to dynamically load your
variables in your playbook.

``` yaml
- name: Working with variables
  hosts: node1
  tasks:
    - name: Load the variables
      include_vars: myvars.yml

    - name: Show 2nd item in port_nums
      debug:
        msg: SSH port is {{ port_nums[1] }}
```

1.  Creating a list dictionaries

    *The variables can be listed in the array*

    ``` yaml
    vars:
       port_nums: [21,22,23,25,80,443]

    ```

