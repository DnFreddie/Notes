+++
title = 'Terraform state'
date = 2024-09-04T10:49:31+02:00
draft = false
+++





*Represents the current state of the resources in the cloud*
![Terraform states](/Notes/terraform_state_cli_visual.png)


`state mv `
*allows to change the refrence so u avodi create and destroy action*
- rename exisitng resources
- move a resource into a module
    - move a module into a module 

**Rename resource**
```bash
# example
terraform state mv packet_device.worker packet_device.helper
```
**Move resource into module**
```bash
terraform state mv packet_device.worker module.worker.packet_device.worker

```
**Move moudle into a module** 
```bash
terraform state mv module.app module.parent.module.app
```
#### Replacing Resources
*Cloud resoruce can become degraded or damaged and u want to return it to a healty state*
```bash
# provide the flag and the resource adress
#Works only on one resource!!!
# avaibable on plan and apply 
terraform apply -replace="aws_instance.example[0]"
```
##### Terraform State Backups
*All commands that modify state will write a backup file**
- Terraform sotores it in `terraform.tfstate.backup`
---

`Note` **Backup cannot be disabled!**

*to get rid of it u have to delete it mannualy*

---
### Resource addressing
![Resource adressing terraform](/Notes/resource_adressing_terrafrom_visual.png)

#### Refresh-Only Mode
![Refresh-Only mode diffrences](/Notes/terraform_flags_refresh_only_visual.png)


- [Teraform]({{< ref "posts/cloud/terraform/terraform.md" >}}) 
