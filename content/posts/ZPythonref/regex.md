+++
title = 'regex'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Main functions ''


| function                             | usage                                                                        |
| ------------------------------------ | ---------------------------------------------------------------------------- |
| **pattern = re.compile(r"pattern")** | *create a pattern*                                                           |
| **re.finditer(pattern, string)**     | *more benefita finding pattern(since it does not store the value in memory)* |
| **match.grroup**                     | *returns a string from a mathc methog *                                                                             |



## Meata characters 

| Charatcer | usage                                                 |
| --------- | ----------------------------------------------------- |
| **.**     | *Any character (exept new line characters )*          |
| **^**     | *The line starts with exaple ^"hello"*                |
| **$**     | *The line ends with "world $*                         |
| ** * **   | *zero or more occueances "aix*                        |
| **+**     | *one or more occurance "aix"+*                        |
| **{}**    | *Exacly the specyfied number of occurrences "al{2}"*  |
| **[]**    | *A set of characters "[a-m]"*                         |
| ** \ **   | *Special sequence (or escape special characters ) \d* |
| **pipe**  | *Either or "falls pipe stays"*                         |
| **()**    | *Capture the group*                                                      |



- [^a-d] Netgeted character set
-  {3,} THis should be used atleast tree times
- Parentheses (?: ): Non-capturing Grouping

### Lookarounds
If we want the phrase we're writing to come before or after another phrase, we need to "lookaround".
Take the next step to learn how to "lookaround".

#### Positive Lookahead: (?=)
For example, we want to select the hour value in the text.
Therefore, to select only the numerical values that have PM after them,
we need to write the positive look-ahead expression (?=) after our expression.
Include PM after the = sign inside the parentheses.

```bash
# This selects only 3 
\d+(?=PM)
Date: 4 Aug *3*PM

```
#### Negative Lookahead: (?!)
For example, we want to select numbers other than the hour value in the text.
Therefore, we need to write the negative look-ahead (?!) expression after our expression to 
select only the numerical values that do not have PM after them.
Include PM after the ! sign inside the parenthese

```bash
# This selects only 4
\d+(?!PM)
Date: 4 Aug 3PM

```
#### Positive Lookbehind: (?<=)


r example, we want to select the price value in the text.
Therefore, to select only the number values that are preceded by $,
we need to write the positive lookbehind expression (?<=) before our expression.
Add \$ after the = sign inside the parenthesis.



```bash
# This selects only 5$
(?<=\$)\d+
Product Code: 1064 Price: $5


```



## Groups 
**U can set matches into particular gorups**

![ReGroups_visual.png](/static/ReGroups_visual.png)
**In order to replace the hole group u have to use sub with /number_of_group**
 ![ReGroupReplacments_visual.png](/static/ReGroupReplacments_visual.png)
## Modification 

- **re.split**
	- splits thes trings inot a list and slpts were the regular expresion matches 
 	- ![Re_Splited_visual.png](/static/Re_Splited_visual.png)
- **re.sub**
	- repalce were the reguolar expresion marches 

## Compilation flags 
*In order to add this as compialation method*
**re.complie(pattern,re.IGNORECASE)**
![ReCompilationFlags_visual.png](/static/ReCompilationFlags_visual.png)

## Regex classses

| Character Class | Description                                        | Equivalent in C Locale & ASCII  |
|-----------------|----------------------------------------------------|---------------------------------|
| `[:alnum:]`      | Alphanumeric characters (letters and digits)       | `[0-9A-Za-z]`                   |
| `[:alpha:]`      | Alphabetic characters                              | `[A-Za-z]`                      |
| `[:blank:]`      | Blank characters (space and tab)                   | N/A                             |
| `[:cntrl:]`      | Control characters, non-printable characters       | N/A                             |
| `[:digit:]`      | Digits                                             | `[0-9]`                         |
| `[:graph:]`      | Graphic characters (excluding space)               | N/A                             |
| `[:lower:]`      | Lowercase alphabetic characters                    | `[a-z]`                         |
| `[:print:]`      | Printable characters (including space)             | N/A                             |
| `[:punct:]`      | Punctuation characters                             | N/A                             |
| `[:space:]`      | Whitespace characters (e.g., space, tab, newline)  | N/A                             |
| `[:upper:]`      | Uppercase alphabetic characters                    | `[A-Z]`                         |
| `[:xdigit:]`     | Hexadecimal digits                                 | `[0-9A-Fa-f]`                   |

### Usage Example

To use these character classes in a regular expression, include them inside brackets:

```bash
grep '[[:digit:]]' file.txt  # Finds lines in file.txt containing any digits
```

>[!quote] [pandas_py](/obisdian_ntoes/notes_obsidian/ZPythonref/pandas_py.md) | [match_py](/obisdian_ntoes/match_py.md) | [awk_command](/awk_command.md) 
