+++
title = 'Perl'
date = 2024-10-15T20:36:36+02:00
draft = false
+++

## Check for tainted varialbes  
*This means if any whre maniputaled by the user*

>*Perl has modules that will  check thsi ex. for databeses*
```bash
perl -T script.pl
```
[Article](https://www.geeksforgeeks.org/perl-taint-method/)

## Get the specyfic column similar to awk

*`-F` is for **filed separator** similarly to awk*
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



### Perl compilation 
[Docs](https://metacpan.org/pod/pp)
`pp` it will embed perl to the binary 

```bash
pp -o packed.exe source.pl        # makes packed.exe
```


### Perl varaibles
if we the function requiers an argument and we will not feed it direcly **it will use the defult vallue **

exaple beeing for loop 
```bash 
perl -e 'while(<>){$x+= lenght}print "$x\n"'
```

> **`-ep` doesnt work for some resone use `-pe`


*This implisitly prints the varaible*
```bash
pgrep -i hugo  | perl -pe ' $_/=1024'

```

## Perl loops 

[While Docs](https://www.perltutorial.org/perl-while/)
>**Perl evaluates the statements `from right to left`.**
>
>It means that Perl evaluates the condition in the while statement at the beginning of each iteration.


faster while loop 
```bash
perl -e 'print "hello\n" while(true)'
```

***foor loop with glob**
```bash
perl -e 'for my $f (glob "*") { print `cat $f` if -f $f; }'
```

```bash
ram  | perl -lane '$sum += $F[0]; END { print $sum/1024 }'
# or 
ps aux | perl -lane 'print $F[1]; $sum+=$F[1]; END { print $sum }'

```
#### Sort function

Perl `sort()` function sorts a list and returns a sorted list.

**The original list remains intact.**

The sort() function has three forms:
```bash
sort list;
sort block list;
sort subroutine_name list
```
