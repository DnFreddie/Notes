---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: binary search
---

-   We split the value in half to up to the point we find it
    -   its basically an logarithm so the run time is **O(log n)**
    -   List has to be **ordered**

### Implementation

We find middle point *high is exclusive low is inclusive*

``` go
search(array,low,high)
midpoint: low +(hi-low)/2
value = [Static Array][m]
if value: n  
return true 
else if  v > m 
low: m+1

else 
n: m 

```

> Example
>
> Code in action
> ![Pasted_image_20230628235827.png](/static/Pasted_image_20230628235827.png)

#codingProblem ## Two crystal balls problem - First we drop one ball in
the middle point to check weather it breaks - *Remember that list has to
be ordered* - if it breaks we check the lower portion of an array - if
it doesnt we go higher
