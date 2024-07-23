+++
title = 'Contorl_Plane_kubenretes'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

     Maneges worker nodes and pods in the cluster
>[!example]
![Pasted_image_20240509161141.png](/Pasted_image_20240509161141.png)
### Kube-apiserver 
- Front end of the control plane
- **Exposing  [Kubernetes](/Kubernetes.md) API**


### Etcd
- **Key/value store** of the current state of the cluster 


### Cloud-controller-manager
- Communicates between the **cluster** and cloud **Api**
