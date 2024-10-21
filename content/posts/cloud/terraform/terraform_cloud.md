---
date: "2024-09-09T11:41:28+02:00"
draft: false
title: Terraform cloud
---

![terraform cloud
sturcture](/Notes/terraform_cloud_runs_and_workspaces_visual.png) -
**Organizaitons** - A collection of workspacess - **Workspaces** -
Unique enviromnment or stack,

-   **Teams**
    -   Composed of multiple users
    -   Can be assinged to the **workspace**
-   **Runs**
-   A run resperesnts a single-run of terreaform run
    -   Runs coul be UI/VSC dirven API driven or CLI driven

## Terraform Cloud run Workflows

-   **UI/VCS Driven**(*user interface or Version control system*)
    -   Uses webhooks or Github actions
-   **API-DIRVEN**
    -   Will trigger runs via upload a configuration file via the
        `Terra Cloud API`
    -   Will trigger runs by uploading a configuration file via the
        Terraform Cloud API.
-   **CLI-Driven**

### Terraform Cloud Run Triggers

*`Source Workspaces` Connect workspaces to one or more workspaces* - Run
triggers  
- Designed for workspacess that relay on inforamtion from another
workspacess

## Organization-Level Permissions

-   Organizaiton owners(*baiscly a root account*)

[Organizaion level
perrmissions](/Notes/organizational_level_permissions_viusal.png) ###
Terrafom Cloud Agents *Communicate wiht isolated .private or
on-presmiswe infrastuecture*

## Teraaform Enterprise

*Self-hosted licens distribiout of the terrafrom platofmr* ![Terraform
Enterprise
model](/Notes/terraform_enterpirse_self_hosted_enviroment_visual.png)
