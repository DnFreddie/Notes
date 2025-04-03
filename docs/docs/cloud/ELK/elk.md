---
title: "elk"
date: 2025-04-01T18:01:40+02:00
draft: false
---

# Elastic stack

* Elastic Search
    * Distribiuted json based search and analytics engine
*  Logstash collect logs, metrics, and other data from different sources, process it (e.g., filtering, parsing), and then output it to various destinations.
*  Kibana
    * Create data graphs


##  Elastic Search

### Structure
[Docs](https://www.knowi.com/blog/what-is-elastic-search/)
* `Documents`
  * type + json data *(a row in a relational database, representing a given entity)*
* `Index`
    *  Collection of the  documents based on the cryeria ex. **Customers
      index**


### Kibana
The metrics of kibana are not shown by defulati u have to create [defualt index
pattern ](https://stackoverflow.com/questions/36871862/programmatically-set-kibanas-default-index-pattern)
not to confuse with the [index template](https://discuss.elastic.co/t/whats-the-differece-between-index-pattern-and-index-template/54948)

> Index and Index Template are Elasticsearch constructs. Index Pattern is a Kibana construct.
* `Index templates` allow you to define templates that will automatically be
applied when new indices are created.
    * The templates include both **settings and  mappings**, and a simple pattern template that controls whether the template       should be applied to the new index.
* `index pattern`
    * identifies one or more Elasticsearch indices that you want to explore with Kibana. Kibana looks for

#### Creating index patterns programmatically
