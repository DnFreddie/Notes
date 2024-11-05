---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Kubernetes
---

## Benefits
-   **Availability and scalability**
    -   **Load balancing**
        -   It can *duplicate* the applicatipn  
-   **Portable**
    -   can run anywhere on any type of the infrastructure
-   **Popularity**

## Cluster Architecture
> `Lifecycles` of [pods](/Notes/posts/CKA/pods) and [kube service](/Notes/posts/CKA/kube_service) are not connected !

### [RBAC cluster](/Notes/posts/CKA/RBAC_cluster)

#### Config map
*External configuration of u'r application*

>**Get all config maps in the [deployments](/Notes/posts/CKA/kube_deployments)**
```bash
kubeclt get cm
# Output:
# index-html-blue        1      20s
# index-html-yellow-v2   1      20s
# kube-root-ca.crt       1      28d
```

### Nodes 

####  Master Nodes 
*Always run this four processes*
* `API server` 
* `Scheduler`(*it calls [kubectl](/Notes/posts/CKA/kubectl)*)
    * wehre to put the pod 
* `Controler manager`(*calls the `scheduler`*)
    *  Detecting the state changes 
* `etcd`(*a cluster brain*)
    * Baisicly it holds the entire data of the cluster state
    * cluster changes are saved in a **key-value store**
        *  only `application data` is not stored in etcd 

#### Worker node 
* Has  mulitple [pods](#pod) running 
* Has those 3 components **always installed**
    * Container runtime 
    * Kubelet (scheduling the containers)
    * Kube Proxy

##### node_k
-   **pshyhical virtual machine**
    -    runs one or more pod

## Diffrent tools

-   [WareWolf](https://warewulf.org/)
