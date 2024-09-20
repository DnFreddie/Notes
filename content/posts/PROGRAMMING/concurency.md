+++
title = 'Concurency'
date = 2024-09-18T09:26:53+02:00
draft = false
+++


[Article](https://medium.com/@deckarep/gos-extended-concurrency-semaphores-part-1-5eeabfa351ce)
### Mutex  
*Constrain the acess to only 1 thread (guards a critical selection of the code)*
### Semaphore 
*Constrains access to at most N threads, to control/limit concurrent access to a shared resource.*
```go
// Acquiring 
sem.Acquire(ctx, 1) // equivalent to sem <- 1 (using channel approach)
// Releasing 
sem.Release(1) // equivalent to <- sem (using channel approach>

```
