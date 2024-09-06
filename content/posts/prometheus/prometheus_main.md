+++
title = 'Prometheus'
date = 2024-07-22T22:10:24+02:00
draft = false
categories = ["logging"]
tags = ["prometheus"]
+++

*Not a logging tool just* [time series db]({{< ref "posts/databases/time_series_db.md" >}}) 
# Installation
- Normal way
[Docs](https://stevescargall.com/blog/2021/12/how-to-install-prometheus-and-grafana-on-fedora-server/)

> *Promethues  is a **service account**, remeber to* ***dislable it's shell*** 
```bash
sudo useradd -M -r -s /bin/false prometheus
```
- With ansible 
    -[Ansible Playbook]({{< ref "posts/ansible/templates/prometheus_installation.md" >}})



# Structure  
- Uses [PromeQl](https://prometheus.io/docs/prometheus/latest/querying/basics/) query language 
- It's based on the [time series db]({{< ref "posts/databases/time_series_db.md" >}}) (*saved on the main node)*
    - **Exporters** **pulls the data over the http** form the nodes 
- Targets are dicovered via *service discovery or static configuration* 
>U need to hve **Prometheus server** on main node
>And [Node Exporter]({{< ref "posts/ansible/templates/node_exporter_installation.md" >}}) on the others
>![protemtheus Structure](/Notes/prometheus_structure.png)



## Nodes 
- They are simply  called **instances**(*any endpoint u can scrape*)
    - *They can be setup via the jsonfiles*
- **Jobs**
    - *collections of* **instances**



###  Push vs pull 
[Aritcle](https://prometheus.io/blog/2016/07/23/pull-does-not-scale-or-does-it/)
#### Push 
*Refers to the end point pushing data into promethues instance*

***!It's not a prefered method!***
- If u must push, therse a [`Protemtheus Push Gateway`]()
- This is not a agregator or distributed coutnter  it's a  `metric cache`
    - ***!Pushed metrics are never removed without mannual purge!***
#### Pull
*Refers to the end point presenting http inforamtion and then having the promethues isntance **scrape** the data into database*
- Natively checks weather the node is down (*becouse it's pulling data obviously*)
- They **roate** if the scrapes are deleted
##### Retention time 
By defualt it st
```bash
--storage.tsdb.retatnion.time 31\
```
### Service discovery
*Can be either `File based` or `Http Based`*
- File based *via node exporter*
### Service
    - deuflt adress *http://localhost:9100/metrics*
    - can be any ohter port
- Http based
    - U can add any metric/data u want 
    - Response must be 200
    - Contnent-Type must be application/json 
    - Body must be valid JSON
>![Service discovery](/Notes/service_discovery.png)

## Tracing and spans
- `Trace` the hole journey of the request actions as it moves through all nodes in distributed stysem 
- `Spans` operation or work taking place on a service , web server responding  to an individual **request** or **function**

## Logging 
By fefualt the prometheus logs to the `/var/log/prometheus`

## [Slos Slis Slas]({{< ref "posts/prometheus/slos_slas_slis.md" >}})
[Service Level Objectives](https://sre.google/sre-book/service-level-objectives/)

## Prometheus limitaion
- LTS a 10 year cycle
- Every ^ weeks new minor realease cycle begins
**Local storage**
- It's not clustered or repliceated so needs to be treaded like a disk
- Compaction happens  in the background 
    - Initial 2h block are eventualy commpacted into longer blocks in the background
    - 10% of data retatnion
    - 32 days which ever is smaller 

## Dashboarding Basics
*Instead of showing everything at once spilt it based on purpose*
- No more the 5 graphs on a console 
- No more hten 5 lines on each graph 
- Avoid mire then 20-30 entires in the rig-hand-sid table 



## Full Prometheus Model
>![protemtheus](/Notes/prometheus_overwiev.png)
