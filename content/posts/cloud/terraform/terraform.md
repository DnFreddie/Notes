---
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- terraform
title: Terraform
---

[Best Pracitces](https://www.terraform-best-practices.com/)

*open source cloud agnostic [iac](/Notes/posts/cloud/iaC/iaC)*
![Terraform Life cycle](/Notes/terraform_life_cycle_visual.png)

-   **Decalrative** cofnigratation files
-   Installable modules
-   Plan and predict changes
-   Depdndency grpahing
-   State mangament
-   Provision infastructure in familiarr languages
-   [Terraform
    Registry](/Notes/posts/cloud/terraform/terraform_registry)/[Terraform
    moudles
    structure](/Notes/posts/cloud/terraform/terraform_standard_module_sturcture)
    -   via AWS CDK

**Speculative vs Saved** ![Seculative Plans vs Saved
Plans](/Notes/terraform_plan_table_visual.png)

### [Terraform state](/Notes/posts/cloud/terraform/terraform_state)

### [Registry](/Notes/posts/cloud/terraform/terraform_registry)

### Initailaizing

*the initailzaion works like npm install it fetches the requaiermetns*

## ### Structure

`Terraform  Block` **Terraform setting and the requaierd `providers`** -
`source` defines and optional hostname, namespace, type

-   By default providers are pulled from the [Terraform
    Registry](https://registry.terraform.io/)

``` terraform
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
```

|                                                                                                                                                                  |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|                                                                                                         `Provider Block`**Stores configuration of the provider** |
|                                                                                                                                       **List all the providers** |
|                                                                                                                                       `bash terraform providers` |
|                                                                                                               `terraform host     = "ssh://user@remote-host:22"` |
|                                                                                              \- **Aliases** (*To disguise the same providers e.g., AWS regions)* |
| ![Aliases rules](/Notes/alias_providers_code_block_visual.png) [Docker Provider Example](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs) |

`Resource Block` **Components of the infastructure**(`type` and `name`)

``` terraform
// resource type docker_container resource name nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally: false
}
```

------------------------------------------------------------------------

`modules`(*Modules are just like roles in Ansible; they are
pre-packed.*) - **Providers** are the raw APIs where **modules** give
you shorthand

|                                                                                                                                                                                                                                                                                                                                                                        |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ### Varaibles                                                                                                                                                                                                                                                                                                                                                          |
| `input varaibles`(*paramaters ot to the teraform modules*) - Declere varaibles in **root module** or **child module** - Options - **default**(assaing the defautl value) - **type** - **descirption**(*optional for documentation*) - **Validation** (*baicly if statmetns)* - **sensitive** don’t show up in the oput of terraform (*something like a private filed)* |
| \`\`\`terraform variable “docker_ports” { type: list(object({ internal: number })) default = \[ { protocol = “tcp” }\] }                                                                                                                                                                                                                                               |
| \`\`\`                                                                                                                                                                                                                                                                                                                                                                 |
| `HERDOC` *multile-line strigns*                                                                                                                                                                                                                                                                                                                                        |
| `bash <<EOT test world hello EOT`                                                                                                                                                                                                                                                                                                                                      |
| `strign directive % %` *can be used in `HEREDOC`* - `~` will stirp the space                                                                                                                                                                                                                                                                                           |
| \`\`\`terraform “Hello %{if var.name !=”“}%{else}%{endif}”                                                                                                                                                                                                                                                                                                             |
| \<\<EOT %{for ip in aws_instance.example.\*.private_ip \~} server ${ip} %{ endfor } EOT \`\`\`                                                                                                                                                                                                                                                                         |

> `null` is either **absent** or **default**

------------------------------------------------------------------------

`ternary if else conditions` *the return type for it the if stament must
be the same type*

``` terraform
condition ? true_val:false_val
var.a != "" ? var.a : "default-a"
```

`for loops`

``` terraform
# Arrays
[for s in var.list : upper(s)]

# Maps
[for k, v in var.map : lenght(k) + lenght(v)]

# Returning structure 
{for s in var.list :s => upper(s)}
```

`spalt expresion`*iterate over evieyhitn *

``` terraform
var.list[*].id
var.list[*].interafaces.name
```

`Dynamic blocs`*simmilar to loop in ansible*

``` terraform
dynamic "ingress"{
    for_each: local.ingressruellse
}

```

#### \[Varaibles Definitons Files\]({{\< ref “posts/cloud/terraform/terraform_config_files.md#variable-definitions-files”\>}})

#### \[Env Vars\]({{\< ref “posts/cloud/terraform/terraform_config_files.md#env-variables”\>}})

------------------------------------------------------------------------

`Outpus`**similar to the ansible registers**

``` terraform
output "instance_ip" {
  value: aws_instance.my_instance.public_ip
}
```

------------------------------------------------------------------------

-   `data block` (`source`and
    `name`)[Docs](https://developer.hashicorp.com/terraform/language/data-sources)

``` terraform
data "aws_ami" "example" {
  most_recent: true
  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}
```

-   `lifecycle` -`precodition` if stament for the data block
    -   `postcodition`

> `Important` **Use provisioners as a last resort. There are better
> alternatives for most situations. Refer to [Declaring
> Provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax)**

------------------------------------------------------------------------

-   `file provisioner` copy fiels from local machine to **new resource**
-   `connection` *tells how to establich connection*
    -   With `ssh` connect through Bastion Host
-   `null_resources` **pleaceholder for resorces with no provider**
    -   `triggers`Map of values which cause provisioners to re run

### Local Exec

*Execute **local commands** after a resource is provisoned* -
`command`(*requaierd*) Command to execute - `working_dir` -
`interpreter`**Entry point for the command** - `envairoment`*env vars*

``` terraform
resource "terraform_data" "example1" {
  provisioner "local-exec" {
    command = "open WFH, '>completed.txt' and print WFH scalar localtime"
    interpreter = ["perl", "-e"]
  }
}
```

#### Remote Execute

*its the same just has modes*

*U can only choose to use one mode a time* - `Inline` list commands
strigns - `Scritp` scrip that will be copied and executed - `Scritps`
multile scirpt execution

### Execution Plans

*A Manual Review of What I’ll Add, Change, or Destroy Before Applying
Changes*

## Visualize

Use [Graph Viz](https://graphviz.org/) to visualzie to create the graph
of ure plan

``` bash
terraform graph  | dot -Tsvg > graph.svg
```

### Terraform Core and Plugins

-   `Core` *usese [RPC\_](/Notes/posts/RPC_calls) to communicate wiht
    plugins*
-   `Plugins`expose impelemtation for a sepcyfic service or provisioner

### Terraform and ansible

![Terraform and ansible](/Notes/terraform_and_ansible_visual.png)

------------------------------------------------------------------------

[Terraform
Spotyfie](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist)
