+++
title = 'SUID'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Granting Temporary Root Permissions with SUID
The **s** instead of h rperesnts that file is in *SUID mode* 
- Any user can exexute the file iwt he permios of the owner bu those permissions dont extend beyond the use of that file 
>[!example] To set the SUID bit, enter a 4 before the regular permissions
>you want to do so, you’ll use the chmod command, as in chmod 4644 filename.

>[!quote] [[userID]] [SGID]({{< ref "posts/Linux/SGID.md" >}}) [UUID]({{< ref "posts/datatypes/UUID.md" >}})