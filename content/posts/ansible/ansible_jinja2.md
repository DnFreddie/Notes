+++
title = 'Jinja2'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

# Stemping the server

*Alot of the times u don\'t know what has changed on the given server*

-   This gives u ability to see what has change before the previous
    configuration

## Delegating

-   By defulat the ansible copies the files to all the host
    -   To prevent that use **delegate_to** *local host*


### Template module

[Docs](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_templating.html)

``` yaml
- name: use Jinja2 template to configure vsftpd
      template:
        src: vsftpd.j2
        dest: /etc/vsftpd/vsftpd.conf
```

1.  Example Template

    ``` bash
    #[ansible@controller templates]$ cat vsftpd.j2
    anonymous_enable={{ anonymous_enable }}
    local_enable={{ local_enable }}
    write_enable={{ write_enable }}
    anon_upload_enable={{ anon_upload_enable }}
    dirmessage_enable=YES
    xferlog_enable=YES
    connect_from_port_20=YES
    pam_service_name=vsftpd
    userlist_enable=YES
    # MY IP Address={{ ansible_facts['default_ipv4']['address'] }}

    ```


## Filtering the nodes

-   *Shorter one*

    ``` templ
    {{ ansible_play_host_all | select('not in', ansible_play_hosts) | join(', ') }}
    ```

-   *Longer one*

    ```templ

    {% for host in ansible_play_host_all %}

    {% if host not in ansible_play_hosts%}

    {{host}}

    {% endif %}

    {% endfor %}
    ```


    ---

[Ansible Main]({{< ref "posts/ansible/ansible_commands.md" >}})
