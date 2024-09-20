+++
title = 'ALB vs NLB'
date = 2024-09-09T10:42:21+02:00
draft = false
+++

## Application Load Balancer(*level 7*)
*it balances incoming http request*
- Routes traffic based of the content of the request
- Built in **health checks**
    - it can route away the traffic form unhealthy targets
- Contenerize support 
- Can route traffic to **ECS and EKS**(*amazon Container and Kubernetess service*)
- SSL offloading 

## Network Load Baleancer(*level 4*)
*It balances the entire connection*
- Designed  for high perofmence and can handle milion request per second 
- **Corss-zone load balancing**
- Automatically distribute traffic among **AZ's**
--- 
[Layer 7 Firewalls]({{< ref "posts/Network/Ref_OSI/L7_FireWalls.md" >}})
