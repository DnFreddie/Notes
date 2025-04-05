---
date: "2024-07-22T09:10:24+02:00"
draft: false
tags:
- terraform
title: Terraform
---

[Best Practices](https://www.terraform-best-practices.com/)

*open source cloud agnostic [iac](/cloud/iaC/iaC)*
![Terraform Life cycle](/static/terraform_life_cycle_visual.png)

-   **Declarative** configuration files
-   Installable modules
-   Plan and predict changes
-   Dependency graphing
-   State management
-   Provision infrastructure in familiar languages
-   [Terraform
    Registry](/cloud/terraform/terraform_registry) /
    [Terraform modules
    structure](/cloud/terraform/terraform_standard_module_structure)
    -   via AWS CDK

**Speculative vs Saved**
![Speculative Plans vs Saved
Plans](/static/terraform_plan_table_visual.png)

### [Terraform state](/cloud/terraform/terraform_state)

### [Registry](/cloud/terraform/terraform_registry)

### Initializing

*The initialization works like npm install; it fetches the
requirements.*

## Structure

`Terraform Block` **Terraform setting and the required `providers`** -
`source` defines an optional hostname, namespace, and type

-   By default, providers are pulled from the [Terraform
    Registry](https://registry.terraform.io/)

``` terraform
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
```

|                                                                     |
|---------------------------------------------------------------------|
| `Provider Block` **Stores configuration of the provider**           |
| **List all the providers**                                          |
| `bash terraform providers`                                          |
| `terraform host = "ssh://user@remote-host:22"`                      |
| \- **Aliases** (*To disguise the same providers e.g., AWS regions*) |

![Aliases rules](/static/alias_providers_code_block_visual.png)
[Docker Provider
Example](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)

`Resource Block` **Components of the infrastructure** (`type` and
`name`)

``` terraform
// resource type docker_container resource name nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}
```

------------------------------------------------------------------------

`modules` (*Modules are just like roles in Ansible; they are
pre-packed.*) - **Providers** are the raw APIs, whereas **modules** give
you shorthand.

| **Variable Type**   | **Description**                                                                                                                              |
|---------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| **Input Variables** | Parameters passed to Terraform modules. They can be declared in either the **root module** or a **child module**.                            |
| **Options**         | \- **default**: Assigns a default value to the variable.                                                                                     |
|                     | \- **type**: Specifies the data type of the variable.                                                                                        |
|                     | \- **description**: (Optional) Used for documentation purposes.                                                                              |
|                     | \- **validation**: Provides a way to add conditional checks (similar to `if` statements) to validate input values.                           |
|                     | \- **sensitive**: Marks the variable as sensitive, meaning it won’t appear in the output of Terraform (useful for private or secret values). |

``` terraform
variable "docker_ports" {
  type = list(object({ internal = number }))
  default = [{ protocol = "tcp" }]
}
```

`HEREDOC` *multiline strings*
`bash <<EOT test world hello EOT`
`string directive % %` *can be used in `HEREDOC`* - `~` will strip the
space

``` terraform
"Hello %{if var.name != ""}%{else}%{endif}"
<<EOT
%{for ip in aws_instance.example.*.private_ip ~}
server ${ip}
%{ endfor }
EOT
```

> `null` is either **absent** or **default**

------------------------------------------------------------------------

`ternary if else conditions` *the return type for the if statement must
be the same type*

``` terraform
condition ? true_val : false_val
var.a != "" ? var.a : "default-a"
```

`for loops`

``` terraform
# Arrays
[for s in var.list : upper(s)]

# Maps
[for k, v in var.map : length(k) + length(v)]

# Returning structure
{for s in var.list : s => upper(s)}
```

`splat expression` *iterate over everything*

``` terraform
var.list[*].id
var.list[*].interfaces.name
```

`Dynamic blocks` *similar to loop in Ansible*

``` terraform
dynamic "ingress" {
    for_each = local.ingressrules
}
```

#### [Variables Definitions Files](/cloud/terraform/terraform_config_files#variable-definitions-files)

#### [Env Vars](/cloud/terraform/terraform_config_files#env-variables)

------------------------------------------------------------------------

`Outputs` **similar to Ansible registers**

``` terraform
output "instance_ip" {
  value = aws_instance.my_instance.public_ip
}
```

------------------------------------------------------------------------

-   `data block` (`source` and `name`)
    [Docs](https://developer.hashicorp.com/terraform/language/data-sources)

``` terraform
data "aws_ami" "example" {
  most_recent = true
  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}
```

-   `lifecycle` - `precondition` if statement for the data block
    -   `postcondition`

> `Important` **Use provisioners as a last resort. There are better
> alternatives for most situations. Refer to [Declaring
> Provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax)**

------------------------------------------------------------------------

-   `file provisioner` copies files from local machine to **new
    resource**
-   `connection` *tells how to establish connection*
    -   With `ssh` connect through Bastion Host
-   `null_resources` **placeholder for resources with no provider**
    -   `triggers` Map of values which cause provisioners to re-run

### Local Exec

*Execute **local commands** after a resource is provisioned*
`command` (*required*) Command to execute
`working_dir`
`interpreter` **Entry point for the command**
`environment` *env vars*

``` terraform
resource "terraform_data" "example1" {
  provisioner "local-exec" {
    command = "open WFH, '>completed.txt' and print WFH scalar localtime"
    interpreter = ["perl", "-e"]
  }
}
```

#### Remote Execute

*It’s the same, just has modes*

*You can only choose to use one mode at a time*
- `Inline` list of command strings
- `Script` script that will be copied and executed
- `Scripts` multiple script execution

### Execution Plans

*A Manual Review of What I’ll Add, Change, or Destroy Before Applying
Changes*

## Visualize

Use [Graph Viz](https://graphviz.org/) to create the graph of your plan

``` bash
terraform graph | dot -Tsvg > graph.svg
```

### Terraform Core and Plugins

-   `Core` *uses [RPC](/RPC_calls) to communicate with
    plugins*
-   `Plugins` expose implementation for a specific service or
    provisioner

### Terraform and Ansible

![Terraform and Ansible](/static/terraform_and_ansible_visual.png)

------------------------------------------------------------------------

[Terraform
Spotify](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist)
