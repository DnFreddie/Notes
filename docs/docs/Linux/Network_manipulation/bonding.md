---
title: 'Bonding'
date : 2024-12-06T10:56:35-05:00
draft: false
---
# Network Bonding Modes

## 1. Round Robin (Mode 0)
* **Description**: Data packets are sent sequentially across all interfaces, distributing the load evenly.
* **Features**: 
  * Load balancing
  * Fault tolerance
* **Requirements**: Switch support.


## 2. Active Backup (Mode 1)
* **Description**: Only one interface is active at a time. If the active interface fails, another takes over.
* **Features**: 
  * Fault tolerance
* **Requirements**: No special switch configuration needed.


## 3. XOR (Mode 2)
* **Description**: Data packets are distributed based on the result of a XOR operation on the source and destination MAC addresses.
* **Features**: 
  * Load balancing
  * Fault tolerance


## 4. Broadcast (Mode 3)
* **Description**: All data packets are transmitted on all interfaces.
* **Features**: 
  * Fault tolerance
  * **Note**: Does not provide load balancing.


## 5. IEEE 802.3ad (Mode 4)
* **Also Known As**: Dynamic Link Aggregation.
* **Features**: 
  * Load balancing
  * Fault tolerance
* **Requirements**: Switch support.


## 6. Adaptive Transmit Load Balancing (Mode 5)
* **Description**: Distributes outgoing traffic based on the load on each interface. Incoming traffic is received by the current active interface.
* **Features**: 
  * Load balancing
  * Fault tolerance
* **Requirements**: No special switch support needed.


## 7. Adaptive Load Balancing (Mode 6)
* **Description**: Similar to Mode 5 but also balances incoming traffic through ARP negotiation.
* **Features**: 
  * Load balancing
  * Fault tolerance
* **Requirements**: No special switch support needed.

