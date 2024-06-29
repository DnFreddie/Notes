---
date:: 01 04 2023
topic:: linux-bash-scripts
type:: Linux
---
## While loop
while read 
while [Variables](/obisdian_ntoes/scriptss/Variables.md)
do
	echo do smth
	**sleep 0.5**
done

```bash 
# Better use of the while loopp
while read -r s; do echo $s; done < servers
```

