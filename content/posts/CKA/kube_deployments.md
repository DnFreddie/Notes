---
title: 'Kube Deployments'
date : 2024-11-04T18:18:43+01:00
draft: false
---

### Deployments  adn StateFulSets 
*Blueprint for pods*
* Deployments
    * You create ddeployments not individual pods 
* StateFulSets
> **DB Can't be replicated via Deployments**!!(*because of state*)
* Menages the `replica set`

>  **get all the blueprints for the pods**
``` bash
 kubectl get replicaset
 # Output:
 # NAME                    DESIRED   CURRENT   READY   AGE
 # nginx-depl-5796b5c499   1         1         1       41m
```

------------------------------------------------------------

* [pods](/CKA/pods)
* [kubectl](/CKA/kubectl)
* [kube service](/CKA/kube_service)
* [Kubernetes](/CKA/Kubernetes)
