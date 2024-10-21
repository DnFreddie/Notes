---
date: "2024-09-06T21:47:07+02:00"
draft: false
tags:
- terraform
title: Terraform backends
---

*It specyfie where and hwo operation are performed and where the
snapshot are stored* **Standard backends**(ussualy third-party backends
e.g.AWS S3) - **The defualt is local** - u can pass another state file
to **cross refrence-stacs** - only store state - does not perform
terrafor operations - to perform operation uses CLI on you local machine

``` terraform
# It storse the state files
backend "s3"{
    bucket = "terraform-state000"
    key = "statefile"
    region = "eu-central-1"
}
```

![Standard Backends](/Notes/standard_backeds_options_visual.png)
**Enhanced backends** - can both sotre state - can perform terraform
operations - `Local` files and data sotred locally - `Remote` files and
data **stored in the Cloud** - The `Terraform Clourd Run Enviroment` is
responsble for executing the operation - When using repote backedn u
need to set `Workspaces` - (*single via name multiple via prefix*)

*`Cloud block` is the preffered way but u can still use `remote backed`
block*

``` terraform
       terraform {
       cloud {
   hostname     = "app.terraform.io"
   organization = "foo"
   workspaces {
     # single Workspace
     name   = "my-single-workspace"
     prefix = "my-app-second-workspace"
   }
 }
}
```

------------------------------------------------------------------------

`#IMPORTANT`

Becouse u run this in a cloud enviroment

Your **provider crediatinals** need to be configured in as **Env Vars**
in Terraform cloud

------------------------------------------------------------------------

### Backend Initialization

The `backednd-config` falg for **terraform init** used for
`partial backend` configuration - Use when the backend seting are
**dynamic or sensitive** *Baiscly u run this form another file*
![Backend Initialization](/Notes/backend_initialization_visual.png)

### \[Terraform State Locking\]({{\< ref “posts/cloud/terraform/terraform_state.md#terraform-state-locking”\>}})

### \[Terraform Remote state\]({{\< ref “posts/cloud/terraform/terraform_state.md#terrafrom_remote_state”\>}})

------------------------------------------------------------------------

-   [Teraform state](/Notes/posts/cloud/terraform/terraform_state)
-   [Teraform](/Notes/posts/cloud/terraform/terraform)
