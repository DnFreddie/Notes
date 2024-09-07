+++
title = 'Terraform standard module structure'
date = 2024-09-06T20:58:54+02:00
draft = false
tags = ["terraform"]
+++
To configure private moudle u need to login via **Terraform cloud/Terraform Login**
- [Terraform Registery]({{< ref "posts/cloud/terraform/terraform_registry.md" >}})


---

`IMPORTANT`**only veryfied modules and offical will be displayed in the search bar**

---
*The primary entry point is the **RooT Module***
- Requaierd files 
    - Main.tf
    - Varaibles.tf
    - Outpust.tf
    - README.md
    - LICEANSE
- **Nested Modules**
    - submodule that contians README is considered **usable by external users**
    - submodule that doesn't have  README is considerd **internal use only**

---
- [Terraform]({{< ref "posts/cloud/terraform/terraform.md" >}})
