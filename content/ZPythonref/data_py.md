---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: data py
---

    | *Function*                | Key                                          | Mode    |

————————- \| ——————————————– \| ——- \|  
*convert rows to numeric* \| **df.apply (pd.to_numeric,errors:
“coerce”)** \| Pandas \|  
*get rid of symbols* \| **.apply(lambda x: x.str.replace(‘%’, ’’))** \|
Pandas \|  
*get rid of spaces* \| **df.columns.str.replace(’‘,’’)** \| Pandas \|  
*drop columns* \| **df.drop(\[‘Opening date’\], axis: 1)** \| Panadas
\|  
*mean* \| **np.mean(ndf\[“Win%”\])** \| Numpy

> \[!quote\] [regex](/ZPythonref/regex) \|
> [pandas_py](/ZPythonref/pandas_py)
