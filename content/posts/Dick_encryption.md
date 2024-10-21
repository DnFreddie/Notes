---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Disck encryption
---

-   U have to use **cryptsetup luksformat** partition name *it uses the
    AES [Encryption](/Notes/posts/Encryption) *
    -   This will <mark style="background: #FF5582A6;">overwrite the
        entire disk</mark>
-   Then in order to use it u have to open it *cryptesetup open
    /dev/sdd1 device_name*

### Decryption on [boot procces](/Notes/posts/boot_process)

> \[!example\] U have to create **/etc/crypttab** file
> ![Pasted_image_20240427161821.png](/Notes/Pasted_image_20240427161821.png)
> “**-**” is for the prompt on boot
