---
title: 'Kube Volumes'
date : 2024-11-28T21:41:10+01:00
draft: false
---

* Static Provisioning 
    * You need a specyfic control over the storage
* Dynamic  Provisioning 
    * Kubernetes will do it automatically using `StorageClass`

> Example geting the default `StorageClass`
```bash 
kubectl get storageclass
# Output:
# NAME                   PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
# local-path (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  22d
```
