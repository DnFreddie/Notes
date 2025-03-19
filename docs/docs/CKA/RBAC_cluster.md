---
date: "2024-10-28T13:15:48+01:00"
draft: false
title: Culster RBAC
---

[Kube Docs
RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

[Killercoda
Lab](https://killercoda.com/killer-shell-cka/scenario/rbac-serviceaccount-permissions)

## Buidlidng Blocks
* `Subject`
 * The user or process that want to access a resource
* `Resource`
    * The kubernetes API **resource type** (ex. *Depoloyment or node*)
* `Verb` 
    * The operation that can be executed on the resource (*creating a pod or delete the service*)


# Namespaces 
*By default kubernetes provides 4 namescpaes* 
* `kube-system`
    * Do not create or modyfie in here !!!
    * System processes 
    * Master and [kubectl](/CKA/kubectl) processes 
* `kube-public`
    * Publicly avaiable data
    * [Config Map](/CKA/Kubernetes#config-map) 
* `kube-node-lease`
    * **hearbeats** of nodes
    * each node has associated `lease object` in namespace
    * determines the **availability of a node**
* `deufalt `
    * resource u create are stored here
    
>**Namespaces can be created with the config files**
```yml
apiVersion: v11
kind: ConfigMap
metadata:
    name: mysql-configmap 
    namesapce: my-namespace
data: 
    db_url: mysql-service.database
```
>**Example to get nampespaces
```bash
kubectl get namescpaes
# Output:
# NAME                 STATUS   AGE
# default              Active   46h
# kube-node-lease      Active   46h
# kube-public          Active   46h
# kube-system          Active   46h
```

## RBAC resources
(*so it’s just binding resources to the any grups*)

-   **`ClusterRole|Role`**
    -   **defines a set of permissions and where it is available**
        -   in the whole `cluster` or just a single `Namespace`.
-   **`ClusterRoleBinding|RoleBinding`**
    -   connects a **set of permissions with an account** and defines
        where it is applied,
        -   in the whole `cluster` or just a single `Namespace`.

Because of this there are **4 different `RBAC`** combinations and **3
valid**

[Kube Namespaces](#namespaces)

*Baiscly if the cluster doesnt know about it (*single namespace*) then
it can’t execute it*

-   **Role + RoleBinding**

    -   (available in single Namespace, applied in single Namespace)

-   **ClusterRole + ClusterRoleBinding**

    -   (available cluster-wide, applied cluster-wide)

-   **ClusterRole + RoleBinding**

    -   (available cluster-wide, applied in single Namespace)

-   **Role + ClusterRoleBinding**

    -   (**NOT POSSIBLE:** available in single Namespace, applied
        cluster-wide)

> **Create and bind resources**`k create <resource> <target>`

``` bash
k create systemaccount test -n node1 -n node2 
```


>**Crete a role smoke in applaication  ns that can create deled against pods,deployments
```bash
k -n applications create role smoke --verb create,delete --resource pods,deployments,sts
```

### Nodes and there roles

> **get the information about the particular role** `k get clusterrole`

``` bash
 kubectl get clusterrole view

# Output
# NAME   CREATED AT
# view   2024-10-07T10:20:53Z
```

#### Describing ther roles

> **Get information what the role can ascess** `k describe clusterrole`

``` bash
kubectl describe clusterrole view 
# Output: 
# daemonsets.apps/status                       []                 []              [get list watch]
# daemonsets.apps                              []                 []              [get list watch]
# deployments.apps/scale                       []                 []              [get list watch]
```

#### Can i tho ?

> **Tells if u have permissions to perform the action**
> `kubeclt auth can-i`

``` bash
kubeclt auth can-i delete deployments --as system:serviceaccount:ns1:pipeline -n ns1
# Output:
# No
```

### Namespaces

*Everything in kubernetes can talk to evrything* Depends on the
proxymity \> When the resources are in the `same namespace` they can
**see each other: direcly**

> **`kubeclt get` to acceess all namespaces**

``` bash
 kubectl get namespaces 

 # Output:
 # NAME                 STATUS   AGE
 # default              Active   21d
 # kube-node-lease      Active   21d
 # kube-public          Active   21d
 # kube-system          Active   21d
 # local-path-storage   Active   21d
 # ns1                  Active   53s
 # ns2                  Active   53s
 # controlplane $ 
```

#### Creating Cluster Roles
> Example creating a cluster role
```bash
kubectl -n applications create role smoke \
  --verb=create,delete \
  --resource=pods,deployments,statefulsets

# Output: 
# role.rbac.authorization.k8s.io/smoke created
```

#### Service accounts
Upon object creation, the API server creates a Secret holding the API token
and assigns it to the ServiceAccount.

> Exaple disoviering SericeAccount  secrets
```bash 
 kubectl get secrets

# Output:
# NAME                          TYPE                                  DATA   AGE
# build-bot-token-rvjnz         kubernetes.io/service-account-token   3      20m
# default-token-qgh5n           kubernetes.io/service-account-token   3      93d
```

------------------------------------------------------------------------

[Namespaces](/Namespaces)
[Kubernetes](/CKA/Kubernetes)
