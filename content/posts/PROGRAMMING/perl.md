+++
title = 'Perl'
date = 2024-10-15T20:36:36+02:00
draft = false
+++



## Get the specyfic column similar to awk

```bash
df -iT | perl -F'\s+' -lane 'print $F[0] + $F[2]'
```

## Get the sum of the elements form stdin

```bash
perl -lane '$sum += $F[0]; END { print $sum }' file.txt
```

### Explanation:
- `-l`: Automatically chomps the input line and adds a newline to the output.
- `-a`: Automatically splits each line into the `@F` array based on whitespace.
- `-n`: Processes each line of the input file in a loop.
- `$sum += $F[0]`: Accumulates the sum of the first column.
- `END { print $sum }`: Prints the total sum after processing all lines.

