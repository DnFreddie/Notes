---
date: "2024-10-15T20:36:36+02:00"
draft: false
title: Perl
---

## Check for tainted varialbes

*This means if any whre maniputaled by the user*

> Always in scritps add `#!/usr/bin/perl -T`

> *Perl has modules that will check thsi ex. for databeses*

[Article](https://www.geeksforgeeks.org/perl-taint-method/)

``` bash
perl -T script.pl
```

**U can set a scure path to run only executables from this path **

``` perl
$ENV{'PATH'} = '/usr/local/bin:/usr/bin:/bin';
```

## Get the specyfic column similar to awk

*`-F` is for **filed separator** similarly to awk*

``` bash
df -iT | perl -F'\s+' -lane 'print $F[0] + $F[2]'
```

## Get the sum of the elements form stdin

``` bash
perl -lane '$sum += $F[0]; END { print $sum }' file.txt
```

### Explanation:

-   `-l`: Automatically chomps the input line and adds a newline to the
    output.
-   `-a`: Automatically splits each line into the `@F` array based on
    whitespace.
-   `-n`: Processes each line of the input file in a loop.
-   `$sum += $F[0]`: Accumulates the sum of the first column.
-   `END { print $sum }`: Prints the total sum after processing all
    lines.

### Perl compilation

[Docs](https://metacpan.org/pod/pp) `pp` it will embed perl to the
binary

``` bash
pp -o packed.exe source.pl        # makes packed.exe
```

### Perl pacagemenager

**Install Carton** `cpanm Carton`

Set Up the cpanfile: In your project directory, create a cpanfile and
list your module dependencies there

``` perl
# cpanfile
requires 'Test::MockModule', '0.17';
requires 'Test::More', '1.302162';
```

then

``` bash
carton install
carton exec perl your_script.pl
carton exec prove -l
```

### Perl varaibles

if we the function requiers an argument and we will not feed it direcly
**it will use the defult vallue **

exaple beeing for loop

``` bash
perl -e 'while(<>){$x+= lenght}print "$x\n"'
```

> **`-ep` doesnt work for some resone use `-pe`**

*This implisitly prints the varaible*

``` bash
pgrep -i hugo  | perl -pe ' $_/=1024'
```

## Perl loops

[While Docs](https://www.perltutorial.org/perl-while/)

**Perl evaluates the statements `from right to left`.**

It means that Perl evaluates the condition in the while statement at the
beginning of each iteration.

faster while loop

``` bash
perl -e 'print "hello\n" while(true)'
```

**foor loop with glob**

``` bash
perl -e 'for my $f (glob "*") { print `cat $f` if -f $f; }'
```

``` bash
ram  | perl -lane '$sum += $F[0]; END { print $sum/1024 }'
# or 
ps aux | perl -lane 'print $F[1]; $sum+=$F[1]; END { print $sum }'
```

#### Sort function

Perl `sort()` function sorts a list and returns a sorted list.

**The original list remains intact.**

The sort() function has three forms:

``` bash
sort list;
sort block list;
sort subroutine_name list
```

### Open files

> **Summary of Modes** - `<`: Read only. `>` : Write only (truncates). -
> `+<` : Read and write. `+>` : Write and read(truncates). - `+>>`:
> Append and read. `>>` : Append.

#### Append the file with contents

*similar to go fmt.Printf in buffer*

``` perl
# String to append
my $string = "This is the string to append\n";

# Open file in append mode
# U can do this way but unreadable 
print $fh $string;

#this is much better
printf $f ("%s\n", $flash) 

close($fh) or die "Cannot close file: $!";
```


### Grep usage
*ARGV* Holds the name of the file where $& holds the match 
If u dont't use close after $ARGV then  it will look further and pruitn this agian
> Finding weather the string matches the file 
```bash
perl -wnl -e '/pass auf/i and print $ARGV and close $ARGV ;' ./*
$ perl -nle '$seen{$ARGV}++ or print $ARGV if /pass|auf/i' *

./czasKatedr.md
./test.md
```

### MAtching in context
> Example printing with the context
perl --00 -nle  'print if /pass/ i'

### Templating
> CONVERTING SPECIAL CHARACTERS 103
```bash 
#! /usr/bin/perl -s –wpl
# Template processor for SPUG meeting announcement
s/ %%DATE%% /$date/gx;
s/ %%SPEAKER%% /$speaker/gx;
s/ %%TITLE%% /$title/gx;
s/ %%CONTACT%% /$contact/gx;
s/ %%SUMMARY%% /$summary/gx;
```

Begin block
```bash 
#! /usr/bin/perl -s -i.bak -wpl
# Inserts contact info for script author after shebang line
BEGIN {
$author or
warn "Usage: $0 -author='Author info' f1 [f2 ...]\n" and
exit 255;
}
# Append contact-info line to shebang line
$. == 1 and
s|^#!.*/bin/.+$|$&\n# Author: $author|g
```


#### Test operators 
>U can easily run perl for  the test operators
```bash 
find -type f | perl -lne  'print if -B ' 

```
**File Test Operators in Perl**
`Operator`	`Description`
-r	File is readable by the current user
-w	File is writable by the current user
-x	File is executable by the current user
-o	File is owned by the current user
-R	File is readable by real user ID
-W	File is writable by real user ID
-X	File is executable by real user ID
-O	File is owned by real user ID
-e	File exists
-z	File exists and is empty
-s	File exists and is not empty (returns size in bytes)
-f	File is a regular file (not a directory, pipe, etc.)
-d	File is a directory
-l	File is a symbolic link
-p	File is a named pipe (FIFO)
-S	File is a socket
-b	File is a block special file (e.g., disk device)
-c	File is a character special file (e.g., terminal)
-u	File has setuid bit set
-g	File has setgid bit set
-k	File has sticky bit set
-t	Filehandle is opened to a terminal (TTY)
-T	File is a text file
-B	File is a binary file
-M	File's age in days since last modification
-A	File's age in days since last access
-C	File's age in days since last inode change


------------------------------------------------------------------------

- [perl pod](posts/PROGRAMMING/perl/perl_pod.md)
- [perl main](posts/PROGRAMMING/perl/perl_main.md)
- [perl regex](posts/PROGRAMMING/perl/perl_regex.md)
