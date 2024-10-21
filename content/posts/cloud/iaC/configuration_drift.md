---
date: "2024-08-27T14:51:14+02:00"
draft: false
title: Configuration drift
---

*Provisioned Infrastructure Has an **Unexpected Configuration Change***
![Configuration Drift](/Notes/configuration_drift_visual.png)

## Possible Causes

-   Team members manually adjusting configuration options
-   Malicious actors
-   Side effects from APIs, SDKs, or CLIs

## Prevent

-   **Immutable Infrastructure**: ***Always create and destroy, never
    reuse***
    -   Servers are never modified after they are deployed.
    -   Use baking AMI images or containers via AWS Image Builder, etc.
-   **GitOps**: Implement version control for infrastructure changes.

## Detect

-   Compliance tools
    -   Use [Terraform](/Notes/posts/cloud/terraform/terraform) refresh
        and plan commands to ensure the infrastructure matches the
        desired state.

## Correct

-   AWS compliance tools
-   Store expected state using `Terraform state files`.

------------------------------------------------------------------------

-   [Infrastructure as Code (IaC)](/Notes/posts/cloud/iaC/iaC)
