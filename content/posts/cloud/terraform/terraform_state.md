---
date: "2024-09-04T10:49:31+02:00"
draft: false
tags:
- terraform
title: Terraform state
---

*Represents the current state of the resources in the cloud* ![Terraform
states](/Notes/terraform_state_cli_visual.png)

`state mv` *allows to change the refrence so u avodi create and destroy
action* - rename exisitng resources - move a resource into a module -
move a module into a module

**Rename resource**

``` bash
# example
terraform state mv packet_device.worker packet_device.helper
```

**Move resource into module**

``` bash
terraform state mv packet_device.worker module.worker.packet_device.worker
```

**Move moudle into a module**

``` bash
terraform state mv module.app module.parent.module.app
```

#### Replacing Resources

*Cloud resoruce can become degraded or damaged and u want to return it
to a healty state*

``` bash
# provide the flag and the resource adress
#Works only on one resource!!!
# avaibable on plan and apply 
terraform apply -replace="aws_instance.example[0]"
```

##### Terraform State Backups

\*All commands that modify state will write a backup file\*\* -
Terraform sotores it in `terraform.tfstate.backup` —

`Note` **Backup cannot be disabled!**

*to get rid of it u have to delete it mannualy*

|                                                                                                                                                                                                                                                                                                                                               |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ### Resource addressing ![Resource adressing terraform](/Notes/resource_adressing_terrafrom_visual.png)                                                                                                                                                                                                                                       |
| #### Refresh-Only Mode ![Refresh-Only mode diffrences](/Notes/terraform_flags_refresh_only_visual.png)                                                                                                                                                                                                                                        |
| ### Terrafrom_remote_state *Retrieves the root module output values from another **Terraform configuration*** - Only the root-level values from the remote state snapshot are exposed. - Resource data and output values from nested modules are not accessible. - To enable that, **explicitly configure a passthrough in the root module.** |
| ![Terraform Remote State](/Notes/remote_terrarom_backends_state_visual.png)                                                                                                                                                                                                                                                                   |
| ### Alternative to Remote State                                                                                                                                                                                                                                                                                                               |
| The `terraform_remote_state` only exposes output values, requiring users to access the **entire state snapshot**, which may contain **sensitive information**.                                                                                                                                                                                |

`IMPORTANT` Publish data for external consumption to a sepearte location
instead of using remote state ![Alternaive to the Remote
State](/Notes/altternative_to_the_remote_state_visual.png)

------------------------------------------------------------------------

### Terraform State Locking

Terraform will lock your state for all operations that could write sate.

-   Disableing Locing(*not recommended* `-lock` flag)
-   Force unlock(*mannualy unlock satte if it failes*)
    -   If u unlock the sate when someone is hold a lock it causes
        **multiple wirters issues**
        -   The command requaiers the **uniqe lock id**
        -   Terraform wil oputput lock ID if unlocking fails

        ``` bash
        terraform force-unlock <lock id> -force
        ```

------------------------------------------------------------------------

`Note`Terraform log doesn’t show if it fails or succeeds **only if it
takes to long**

-   [Teraform](/Notes/posts/cloud/terraform/terraform)
