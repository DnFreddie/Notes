---
date: "2024-08-07T18:34:50+02:00"
draft: false
tags:
- prometheus
title: Promql
---

[Cheat sheet and labs](https://promlabs.com/promql-cheat-sheet/)

### Data Models and Lablse

-   `Metrics Names` Specyige the general feature of system taht is
    mesaured(*http_request_toatl*)
-   `Metrics Lables` Enable Prometheus dimensional data modle to
    ideentyfie any given combination of labes for the same metiric anem
    -   Can’t use \_\_ resrved for the internal testing

## DataTypes

-   `Stirng`
-   `Scalar` *int*
-   `Vectors`
-   `Instant vector` (*One value* )
    -   **Every 30s** `[30]`
-   `Range vectors`(*Multiples values*)
    -   **From yesterday to now**
-   `Counter` (*sotres a metric that will **increase over time** and
    **total amount** of them*)
    -   *If metrics is a `total` then this is* `counter`
        -   Example: **alter_menager_recived_total**
    -   *shoudln’t be used for decrease*
    -   Returns `Instant Vector`
    -   Examples **request count** or **error count**

    > *total number of the metrics over desired period*
    > `bash rate(counter_name [last_period_of_time])`

    -   `increase` (*how much a counter has gone up over a certain
        period of time*)
        -   Imagine you have a counter for disk flush requests: At the
            start of the day, the counter is at 100. By the end of the
            day, it’s at 300. The increase is 200
-   `Gauge` (*metrics that* **go up and down**)
    -   Cpu Usage,memory usage ,response time
    -   Usually an input to the agregaitng functions like **avrage over
        time**

``` bash
avg_over_time(http_response_time[5m])
```

-   `Hisotgram` *put data in a specyfic buckets*(***has to be
    predefined***)
    -   Stores **total number of metrics**
        -   **Sum of values**
    -   *If metrics is a `bucket` then this is* `histogram`
        -   Example: **prometheus_http_response_size_bytes_bucket**
    -   Better visualisation
        -   predefined functions for procentails

        ``` bash
        Hisotgram_qunatilne(0.95,sum(rate(request_duration_buckets))by(le))
        ```
-   `Summery`(*if u don’t know the exact value of the buckets*)
    -   Response times
    -   Respnse size
    -   Bytes exchanged
    -   ReadIO ## Filters
-   Based on ***labels***

### Rates and Derivities

`rate()` Stable increase of vector `irate()` The same as vecotrs unless
spikes `derive` desinged to show changes more for an aletr then the
daschboard

### Cpu usage over the last cpu

``` prometheus
sum by(cpu)(rate(node_cpu_seconds_total{mode!="idle"}[5m]))*100
```

``` prometheus
sum by(path)(rate(http_request_total{status="500"} [1d]))
```

### Aggregation over dimmesions

-   *lables add dimension to the dataset* *http_request_total has 3
    lables **application instance grouop***
-   Get all the labes

``` prometheus
sum(http_request_total)
```

-   Exclude instaces

``` prometheus
sum(http_request_total) without(instance)
```

-   or based on another group

``` prometheus
sum by (application_group)(http_request_total)
```

### Timestamps Metrics

*`timestamps` are given in `epoch time` and can be queried for instant
vector* - How fresh the data is

``` bash
# So this will give u the raw data to 
timestamp(go_memstat_frees_total)

# To get human readable time use 
time() - timestamp(go_memstat_frees_total)
```

### Base units

![Base prometheus units](/static/promql_units.png)
