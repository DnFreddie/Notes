---
title: 'Helm'
date : 2024-11-15T18:23:05+01:00
draft: false
---
*It's baiscly templating engine and pkg manager combined*

## Helm Charts 
* Bundle of YAML Files
    * Create your own Helm Charts with Helm
    * Push them to Helm Repository

> Example values.yml
```yml
imageName: myapp;
port: 8080
version: 1.0.0
```

### The Helm 2 vs Helm 3

* With triller
    * The `Triller` client  is managing the releases 
    * Changes are appliaed to the exisisting deployment instead of createing a new one
        * Handling rollbacks
    * *It Has too much power*
 * Helm 3 is without the Trialler



