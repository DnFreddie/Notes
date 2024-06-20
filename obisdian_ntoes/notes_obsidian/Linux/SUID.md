---
date:: 01 04 2023
topic:: user-permmisons 
type:: Linux
---
## Granting Temporary Root Permissions with SUID
The **s** instead of h rperesnts that file is in *SUID mode* 
- Any user can exexute the file iwt he permios of the owner bu those permissions dont extend beyond the use of that file 
>[!example] To set the SUID bit, enter a 4 before the regular permissions
>you want to do so, you’ll use the chmod command, as in chmod 4644 filename.

>[!quote] [[userID]] [SGID](/obisdian_ntoes/notes_obsidian/Linux/SGID.md) [[UUID]]