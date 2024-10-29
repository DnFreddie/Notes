---
date: "2024-10-28T13:15:48+01:00"
draft: false
title: Culster RBAC
---

[Kube Docs
RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

[Killercoda
Lab](https://killercoda.com/killer-shell-cka/scenario/rbac-serviceaccount-permissions)

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

#### Cluser roles

------------------------------------------------------------------------

[Namespaces](/Notes/posts/Namespaces)
