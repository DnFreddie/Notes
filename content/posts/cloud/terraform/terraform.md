+++
title = 'Terraform'
date = 2024-07-22T09:10:24+02:00
draft = false
+++
[Best Pracitces](https://www.terraform-best-practices.com/)

*open source cloud agnostic  [iac]({{< ref "posts/cloud/iaC/iaC.md" >}})*
![Terraform Life cycle](/Notes/terraform_life_cycle_visual.png)
    
- **Decalrative** cofnigratation files
- Installable  modules 
- Plan and predict changes 
- Depdndency grpahing 
- State mangament 
- Provision infastructure in familiarr languages 
- Terraform Registry 
    - via AWS CDK 



### [Registry]({{< ref "posts/cloud/terraform/terraform_registry.md" >}})



### Initailaizing 
*the initailzaion works like npm install it fetches the requaiermetns*


### Structure
---
`Terraform  Block` **Terraform setting and the requaierd `providers`**
- `source` defines and optional hostname, namespace, type

- By default  providers are pulled  from the [Terraform Registry](https://registry.terraform.io/)

```terraform
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
```


---
 `Provider Block`**Stores configuration of the provider**


**List all the providers**

```bash
terraform providers
```

```terraform
  host     = "ssh://user@remote-host:22"
```


- **Aliases** (*To disguise the same providers e.g., AWS regions)*

![Aliases rules](/Notes/alias_providers_code_block_visual.png)
[Docker Provider Example](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)

--- 

`Resource Block` **Components of the infastructure**(`type` and `name`)
```terraform
// resource type docker_container resource name nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

```
--- 

`modules`(*Modules are just like roles in Ansible; they are pre-packed.*)
- **Providers** are the raw APIs where **modules**  give you shorthand

---
### Varaibles
`input varaibles`(*paramaters ot to the teraform modules*)
- Declere varaibles in **root module** or **child module**
- Options
    - **default**(assaing the defautl value)
    - **type**
    - **descirption**(*optional for documentation*)
    - **Validation** (*baicly if statmetns)*
    - **sensitive** don't show up in the oput of terraform (*something like a private filed)*

```terraform
variable "docker_ports" {
  type = list(object({
    internal = number
  }))
  default = [
    {
      protocol = "tcp"
    }
  ]
}

```
####  [Varaibles Definitons Files]({{< ref "posts/cloud/terraform/terraform_config_files.md#variable-definitions-files">}})
####  [Env Vars]({{< ref "posts/cloud/terraform/terraform_config_files.md#env-variables">}})




---

`Outpus`**similar to the ansible registers**

```terraform
output "instance_ip" {
  value = aws_instance.my_instance.public_ip
}
```
---

- `data block` (`source`and `name`)[Docs](https://developer.hashicorp.com/terraform/language/data-sources)

```terraform
data "aws_ami" "example" {
  most_recent = true
  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}
```
- `lifecycle`
    -`precodition` if stament for the data block 
    - `postcodition`

---
### Provisoners/Prebakeing/
---

>`Important` **Use provisioners as a last resort. There are better alternatives for most situations. Refer to [Declaring Provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax)**

---

- `file provisioner` copy fiels from local machine to **new resource**
- `connection` *tells how to establich connection*
    - With `ssh` connect through Bastion Host
- `null_resources` **pleaceholder for resorces with no provider**
    - `triggers`Map  of values  which cause provisioners to re run 

### Local Exec 
*Execute **local commands** after a resource is provisoned* 
- `command`(*requaierd*) Command to execute 
- `working_dir`
- `interpreter`**Entry point for the command**
- `envairoment`*env vars*
```terraform
resource "terraform_data" "example1" {
  provisioner "local-exec" {
    command = "open WFH, '>completed.txt' and print WFH scalar localtime"
    interpreter = ["perl", "-e"]
  }
}
```
#### Remote Execute 
*its the same just has modes*

*U can only choose to use one mode a time*
- `Inline` list commands strigns
- `Scritp` scrip that will be copied and executed 
- `Scritps` multile scirpt execution


### Execution Plans 
*A Manual Review of What I'll Add, Change, or Destroy Before Applying Changes*

## Visualize 
Use [Graph Viz](https://graphviz.org/) to visualzie to create the graph of ure plan 
```bash
terraform graph  | dot -Tsvg > graph.svg
```

### Terraform Core and Plugins 
- `Core` *usese  [RPC_]({{< ref "posts/RPC_calls.md" >}}) to communicate wiht plugins*
- `Plugins`expose impelemtation for a sepcyfic service or provisioner



### Terraform and ansible 

![Terraform and ansible](/Notes/terraform_and_ansible_visual.png)

---

[Terraform Spotyfie](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist)
