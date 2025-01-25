---
title: 'Firewalld'
date : 2025-01-22T11:30:21+01:00
draft: false
---

## Default zones 
| Zone      | Description |
|-----------|------------|
| **block** | Incoming network connections are rejected with an `icmp-host-prohibited` message. Only network connections initiated on this system are allowed. |
| **dmz** | For use on computers in the demilitarized zone. Only selected incoming connections are accepted, and limited access to the internal network is allowed. |
| **drop** | Any incoming packets are dropped, and there is no reply. |
| **external** | For use on external networks with masquerading (Network Address Translation [NAT]) enabled, used especially on routers. Only selected incoming connections are accepted. |
| **home** | For use with home networks. Most computers on the same network are trusted, and only selected incoming connections are accepted. |
| **internal** | For use in internal networks. Most computers on the same network are trusted, and only selected incoming connections are accepted. |
| **public** | For use in public areas. Other computers on the same network are not trusted, and limited connections are accepted. This is the default zone for all newly created network interfaces. |
| **trusted** | All network connections are accepted. |
| **work** | For use in work areas. Most computers on the same network are trusted, and only selected incoming connections are accepted. |



## Get the state 
```bash
 firewall-cmd --list-all 
 # Output:
 #  FedoraWorkstation (default, active)
 #  target: default
 #  ingress-priority: 0
 #  egress-priority: 0
 #  icmp-block-inversion: no
 #  interfaces: wlp0s20f3
 #  sources:
 #  services: dhcpv6-client mdns samba-client ssh
 #  ports: 1025-65535/udp 1025-65535/tcp
 #  protocols:
 #  forward: yes
 #  masquerade: no
 #  forward-ports:
 #  source-ports:
 #  icmp-blocks:
 #  rich rules:
```

### Servcies
* The services are **xml files**
    * `/usr/lib/firewalld/services/` defulat services
    * `/etc/firewalld/services/` user  services
> List  all services
```bash
 firewall-cmd --get-services | perl -pe 's, ,\n,g'
 # Output:
 # wsdd-http
 # wsman
 # xdmcp
 # zero-k
```
> Get details on the service
```bash
firewall-cmd  --info-service=zero-k
# Output 
# zero-k
#   ports: 8452/udp
#   protocols:
#   source-ports:
#   modules:
#   destination:
#   includes:
#   helpers:
# 
```
* Firewalld services define firewall rules, including:
    * Which ports to open (TCP/UDP).
    * Which kernel modules to load.
    * What traffic should be accepted or rejected.


