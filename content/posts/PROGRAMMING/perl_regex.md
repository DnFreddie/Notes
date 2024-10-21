---
date: "2024-10-18T12:15:24+02:00"
draft: false
title: Perl regex
---

*`PCRE` stands for “Perl Compatibe Regular Expressions.*

[Article](https://www.rexegg.com/pcre-callouts.php)

### Perl re structure

[Artilce](https://www.rexegg.com/regex-perl.php)

You’ll usually see Perl regex patterns expressed between forward
slashes`/this pattern/`

**But you don’t have to use forward slashes.!!** the “long form”, where
m for “match” or s for “substitute” precedes the pattern, you can use
any delimiter you like. \> For instance, `m~some pattern~` is valid

``` perl
next unless $flash =~ m{[^:]+:[^:]+};
```

### Embed regular expresions

> The syntax `(?{...})` lets you run arbitrary Perl code each time this
> part of the regex is successfully matched
>
> `$&` is a special Perl variable that holds the entire part of the
> string that was matched by the regex so far

> `$1` contains the content of *(capture group 1)*

### Back tracking

### Common patterns

`[^"]+` match all the content between certain delimite
