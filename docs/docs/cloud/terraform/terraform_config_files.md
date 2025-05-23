---
date: "2024-08-29T10:41:41+02:00"
draft: false
tags:
- terraform
title: Terraform config files
---

-   Terraform file end in the etendsion of `.tf` or either `.tf.json`

|                                                                                                                        |                                                                        |
|------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| Terraform supports an alternative syntax that is JSON-compatible Useful for generating configurations programmatically | ![.tf.json_example](/static/terraform_language_json_example_visual.png) |

-   [terraform](/cloud/terraform/terraform)

### Variable definitions files

*Allows to decle mulitple
**[varaibles](/cloud/terraform/terraform.md#varaibles)** at
once* - Named `.tfvars` or `tfvars.json`

### Env variables

-   Variables staring with `TF_VAR` will be loaded

``` bash
export TF_VAR_image_id: ami-abc123
```

### Loading input varaibles

-   **Prioriority**
    1.  **Env Vars**
    2.  `terraform.tfvars`
    3.  `terraform.tfvars.json`
    4.  `-var` and `-var-file`

![Loading input varaibles](/static/loading_input_varaibles_visual.png)
