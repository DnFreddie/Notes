---
categories:
- aws
date: "2024-10-03T13:38:48+02:00"
draft: false
tags:
- ec2
title: SSM Paramaters store
---

*Secure sotrage for configuration and secrets*(optional encription with
**KMS**) - Easy with SDK - Version tracking of configuration/secrets -
Seciurity through IAM - Notifications with **Amazon EventBridge** -
Integration with **CloudFormation**

## Paramater Polices

-   Allow **expiration date** to paramater `TTL`
    -   Force changing passowrds
-   Can assaing mulitiple policeies at a time

``` bash
aws ssm get-paramaters --names /my-app/dev/db-url --with-decryption 
```

![paramater policeies](/static/paramater_policies_graph_visual.png)

### SSM Paramater Store Hierarchy

![Paramater Store Hierarchy](/static/ssm_paramater_store.png)

------------------------------------------------------------------------

[SSM](//posts/sysops_aws_cert/ec2_instances/ssm_main/ssm)
