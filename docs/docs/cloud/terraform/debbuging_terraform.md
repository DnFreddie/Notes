---
date: "2024-09-06T20:40:55+02:00"
draft: false
tags:
- terraform
title: Debbuging terraform
---

-   *Detailed logging can be enable via `TF_LOG` and `TF_LOG_PATH` **env
    var***
-   Loggin can be enabled separatly via `TF_LOG_CORE` `TF_LOG_PROVIDER`
-   Here are the options:
    -   TRACE
    -   DEBUG
    -   INFO
    -   WARN
    -   ERROR
    -   JSON(*outputs logs at TRACE level or higher in json*) ## Crash
        Logs *If terraform ever crashes it saves a log file with the
        debug logs form the seesion and the backtrace*

------------------------------------------------------------------------

-   [Terraform](/cloud/terraform/terraform)
