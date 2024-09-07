+++
title = 'Service instrumentation'
date = 2024-09-06T13:13:03+02:00
draft = false
tags = ["prometheus"]
+++
*What stats should give u every library serice or subsystme*

### Service types
- `Online serving system` *Humans use and expect immidiete response*
- `Offline proccesing` *No one waiting for the response*
- `Batch jobs` *offline proccesing may be done in batch no run continously* 


### Subsystems
*Sub-parts of the service* 
- **Libraries** *(no additional configuration should be done this)*
    - Track query count, errors, and latency if calling outside resource.
    - Internal errors, latency, and general statistics.
- **Logging**
    - Every line of logging code should increment a counter somewhere.
  
- **Failures** *(every failure should increment a counter)*
  
- **Threadpools** *(Tracks queries, number of threads in use, number of threads)*
  
- **Caches** *(track queries, hits, misses, and overall latency)*
  
- **Collectors** *(Export gauge for how long the collection took in seconds)*

[Check black box exporter container](https://github.com/prometheus/blackbox_exporter)
--- 
