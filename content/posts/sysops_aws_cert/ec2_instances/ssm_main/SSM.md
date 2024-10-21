---
categories:
- aws
date: "2024-09-07T13:38:48+02:00"
draft: false
tags:
- ec2
title: SSM
---

## AWS Systems Manager Overview

*free service needs to be instaled onot the system we contole* - Menage
[Ec2](/Notes/posts/sysops_aws_cert/ec2_instances/ec2_instance) and
**On-Premises** systems and scale - It shows the instance in a **Fleet
Manager** - U dont have to open any ports - Installed by defualt on
Amazon Linux 2 - U just have to add a
[**AmazonSSMMangegedInstanceCore**](https://docs.aws.amazon.com/aws-managed-policy/latest/reference/AmazonSSMManagedInstanceCore.html)
- Get operationa insight about the sate fo your infrasturcture -
**Patching automation for enhanced compliance** - Works with windows and
linux - Integraded with [Clouwatch
metric/dashbaords](/Notes/posts/sysops_aws_cert/CloudWatch) - Integrated
wit `AWS Config`

### SSM Documentsa

*baisicly a playbooks* [Ansible and ssm
integration](https://aws.amazon.com/blogs/mt/keeping-ansible-effortless-with-aws-systems-manager/)
![SSM Documents Graph](/Notes/ssm_aws_documents_graph_visual.png) -
Written in **json or yaml** - define the paramters and actions

## SSM Automation

### SSM with ansible

### AWS System Menager Features

![System menager
features](/Notes/aws_system_meanger_features_visual.png)

### [Paramater sotre](/Notes/posts//posts/sysops_aws_cert/ec2_instances/ssm_main/ssm_parameter)

### Ssm inventory

#### State manager

*keep the state that u define on
[Ec2](/Notes/posts/sysops_aws_cert/ec2_instances/ec2_instance)*

**State Manager Association** - Defines the state that you want ot
maintain to your mangaged instances - Example port 22 must be
closed,antivirus must be installed - Sepcyfie a schedule when this
configuration is applaied - Uses SSM Documents to create an Association
*(e.g SSM Document to configure CW Agent )*

------------------------------------------------------------------------
