---
title: 'Httpd'
date : 2025-01-23T11:32:01+01:00
draft: false
---

# Guide on installaing and configuring apache server

* Check for the group `Basic Web Server`
```bash
dnf grouplist --hiden 
```


* Check with what the httpd was compiled (*to get the conf file*)
```bash
http -V 
```
