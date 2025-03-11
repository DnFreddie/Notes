---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Bubule Sort
---

-   Singular iteration produces the largest number

-   *The first interation is N the other is
    N-1* >![BubleSort_visual.png](/static/BubleSort_visual.png)

-   we take an sorrted **Static Array**

    -   then we aske the value waether is bigger or not
        -   if its bigger we swaps it to the right
    -   we end up with a max value at the end and cut it

-   *Remeber to add n-1 in the index to not get out og *

-   **The run time is OF of n(2) squer**

    -   [Big O](/Algorithms/Big_O)

## Implementation

``` ts
    for (let i: 0; i < arr.length; i++) {
  for (let j: 0; j < arr.length - 1 - i; ++j) {
    if (arr[j] > arr[j + 1]) {
      const temp: arr[j];
      arr[j] = arr[j + 1];
      arr[j + 1] = temp;
    }
  }
```
