+++
title = 'Ami'
date = 2024-09-04T14:43:33+02:00
draft = false
tags = ['ec2']

+++
## Amazon Machine Image

*customization of* [Ec2instance]({{< ref "posts/sysops_aws_cert/ec2_instances/ec2_instance.md" >}})

[aws marketplace](https://eu-central-1.console.aws.amazon.com/ec2/home?region=eu-central-1#AMICatalog:)
 - You add your own softweare configration etc ..
     - Faster boot because all softere is pre-backed
- Ami are built for a sepcyfic regian (*can be copeid across regions*)

*All u ussualy need is to create the image and this will show  the `ami`*
- AMI Procces( from an EC2 instance)
1. Start Ec2 instance and custimize it 
2. Stop the instance 
3. Build Ami (*this also create the Ebs snapshots*)
4. Launch instance from other AMI's 
 
### No-Reboot Option
*create ami without shuting down the instance*

---

`NOTE` **By defualt this is not selected**

---

*U may not have the file system integrity*
[No reboot vs reboot you ](/Notes/no_reboot_ami_option_aws_visual.png)

#### Aws Backup Plans 
*this won't help u prserve the file system integrity*
---

`NOTE` **It doesn't reboot the ec2 while doing the snapchot**

---
To addres that u need to provide the **reboot parameter** while taking image

| Defualt AMI backup(*not shuting down*)        | Lambda setup backup (*shuting down*)          |
|------------------|------------------|
| ![Image 1](/Notes/default_plans_create_ami_visual.png) | ![Image 2](/Notes/plans_ami_creation_backup_visual.png) |


## AMI in Production 
- You can force users to only launch EC2 instances from **pre-approved AMI's** using **IAM policies**
- Combine with AWS config to find **not complient** EC2 instances(*launched with non-approved AMIs*)
![iam perrmissions for ami ](/Notes/iam_perrmissions_for_ami_visual.png)



### Cross-Account AMI Sharing
- You can share an AMI wiht another AWS account
    - Sharing AMI does not affect the ownership 
    - U can only hsare AMI's with 
        - **unencrypted volumes** 
        - voulems **encrypted with the customer key**
            - *u need to share the key*


    ![Ami Sharing with KMS](/Notes/am_shared_kms_key_visual.png)

#### Cross-Account AMI Copy
 - When copy the shared AMI u become the **owner**
     - The source owner must grant u read perrmisions for the storages that backs the AMI
- If encrypted then must have a key 
- Can ecnrytp the AMI with your own CMK while copying
![Copy Ami](/Notes/ami_copy_key_visual.png)

--- 
- [Ec2 Builder]({{< ref "posts/sysops_aws_cert/ec2_instances/ec2_image_builder.md">}})

- [Ec2instance]({{< ref "posts/sysops_aws_cert/ec2_instances/ec2_instance.md" >}})
