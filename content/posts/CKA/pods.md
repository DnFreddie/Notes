---
title: 'Pod'
date : 2024-11-04T18:08:23+01:00
draft: false
---
* The smallest **deploy-able** unit
    * Usually one app per pod
    * Group of one or more container
        * They **share storage and network** resources ([RBAC
            cluster](/Notes/posts/CKA/RBAC_cluster))
        * Each pod gets it’s own *local ip*
* **Unit of replication**
    * Easy to increase the number of pods running

## Pods kinds

### Sidecar

* Run in the same Pod as main container

* Can share folders with main container

* Can communicate via localhost
    ![Pasted_image_20240509205921.png](/Notes/Pasted_image_20240509205921.png)

### Ambassador

* The main app does not connect to external services

    * The **ambassador container** does it
    * It works pretty much as proxy

![Pasted_image_20240509205439.png](/Notes/Pasted_image_20240509205439.png)

### Adapter

* This modifies the information revived from the container to the
    desired format
    * Example logs or data required for the app

[docks](https://raghavramesh.github.io/posts/kubernetes-multi-container-patterns/)

------------------------------------------------------------

* [kubectl](/Notes/posts/CKA/kubectl)
* [kube service](/Notes/posts/CKA/kube_service)
* [kube deployments](/Notes/posts/CKA/kube_deployments)
* [Kubernetes](/Notes/posts/CKA/Kubernetes)



