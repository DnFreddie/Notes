+++
title = 'Promql'
date = 2024-08-07T18:34:50+02:00
draft = false
tags = ["prometheus"]
+++

[Cheat sheet and labs](https://promlabs.com/promql-cheat-sheet/)


## DataTypes
- `Stirng` 
- `Scalar` *int*
- `Vectors`
- `Instant vector` (*One value* )
    - **Every 30s** `[30]`
- `Range vectors`(*Multiples values*)
    - **From yesterday to now**

- `Counter` (*sotres a metric that will **increase over time** and  **total amount** of them*)
    - *If metrics is a `total` then this is*  `counter`
        - Example: **alter_menager_recived_total**
    - *shoudln't be used for decrease*
    - Returns `Instant Vector`
    - Examples **request count** or **error count**

    > *total number of the metrics over desired period* 
    >```bash
    >rate(counter_name [last_period_of_time])```

    - `increase`  (*how much a counter has gone up over a certain period of time*)
        - Imagine you have a counter for disk flush requests:
        At the start of the day, the counter is at 100.
        By the end of the day, it’s at 300.
        The increase is 200

- `Gauge` (*metrics that* **go up and down**)
    - Cpu Usage,memory usage ,response time
    - Usually an input to the agregaitng functions like **avrage over time**

 ```bash  
 avg_over_time(http_response_time[5m])
 ```

- `Hisotgram` *put data in a specyfic buckets*(***has to be predefined***)
    - Stores **total number of metrics**
        - **Sum of values**
    - *If metrics is a `bucket` then this is*  `histogram`
        - Example: **prometheus_http_response_size_bytes_bucket**
    - Better visualisation
        - predefined functions for procentails
        ```bash
        Hisotgram_qunatilne(0.95,sum(rate(request_duration_buckets))by(le))
        ```
- `Summery`(*if u don't know the exact value of the buckets*)
    - Response times
    - Respnse size 
    - Bytes exchanged
    - ReadIO
## Filters
- Based on ***labels***

### Base units
![Base prometheus units](/Notes/promql_units.png)
