[Docs](https://www.digitalocean.com/community/cheatsheets/how-to-manage-multiple-servers-with-ansible-ad-hoc-commands)

### Test Host connection

```bash
ansible all -i inventory -m ping
```

### Defining Targets

*You can also specify multiple hosts and groups by separating them with colons:*

```bash
ansible server1:server2:dbservers -i inventory -m ping
```

### Runing modules 

- Probably u will need to use the **setup module** 
    - [Docs](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/setup_module.html#examples)
- To execute a module with arguments, include the  **-a** flag followed by the appropriate options in double quotes
    - U can use whatever the cmd with  **-a** 


 ansible -i hosts servers -m setup -a 'filter=ansible_distribution'
 ansible servers -i hosts -m file -a  'state=directory path=/opt/deployment'
```bash 
ansible <target group> -i inventory -m module -a "module options"
```


### Run as root 
```bash
ansible server1 -i inventory -a "tail /var/log/nginx/error.log" --become
```

---
[ansible](/ansible/Ansible.md)
