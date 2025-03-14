---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Go chanels
---

### Read from multiple channels

``` go
func main() {

  c1 := make(chan int)
  c2 := make(chan int)
  out := make(chan int)

  go func(in1, in2 <-chan int, out chan<- int) {
    for {
      sum := 0
      select {
      case sum = <-in1:
        sum += <-in2

      case sum = <-in2:
        sum += <-in1
      }
      out <- sum
    }
  }(c1, c2, out)
}
```

------------------------------------------------------------------------

-   [go concurency](/PROGRAMMING/go/go_concurency)
-   [go main](/PROGRAMMING/go/go_main)
