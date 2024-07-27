+++
title = 'Fibre_channel'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Fibre Channel 

==FC==
A specialized high-speed topology:
- Connects server to storage 
- 2, 4, 8, and 16 gigabit per second [bandwidth]({{< ref "posts/Network/Phisicall/bandwidth.md" >}})
- Supported over **both** [Fiber]({{< ref "posts/Network/Phisicall/Fiber.md" >}}) and [Copper]({{< ref "posts/Network/Phisicall/Copper.md" >}})

**Servers and storage** connect to a Fiber Channel switch:
- Server (*initiator*) needs a **FC interface** 
- Storage (*target*) is commonly referenced by SCSI, SAS, and SATA commands

**Alternatives**:
- [FCoE]({{< ref "posts/FCoE.md" >}})

> [!quote] [SAN]({{< ref "posts/Network/Data/SAN.md" >}}) | [Spine and leaf architecture]({{< ref "posts/Spine_and_leaf_architecture.md" >}})
> [three-tier architecture_net_arch]({{< ref "posts/three-tier_architecture_net_arch.md" >}})

