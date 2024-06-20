---
date:: 2023-08-17
type:: Linux
---
## Awk 
The  awk contains blocks  

 - Givinig new headers to the table  
(*rename columns*)
```awk
awk ' BEGIN{ printf "Sr No\tName\tSub\tMarsk\n"}

{print} file.txt' 
```
 -  If for some raeson u want to use awk itself use **-f** flag
- Varaibles 
	- **-v** allows to pushc a varaible into the command 
```awk
awk -v name=Jerry 'BEGIN{printf "Name = %s\n", name}'
```


## Patterns
- Searching for an pattern 
	-  it has to be in **"/pattern/"**
	- its important  that this will output the *entire* *row* 
	- 

- Counting Matches (*in a loop*)
	- Important to add **END** without it will print each iteration
- Counting letters 
	- Awk has builtin function called **lenght** that returns the *lenght* of the string 1
```awk
awk 'length($0) > 18' marks.tx
```


- **Ignore Case**
```awk
awk 'BEGIN{IGNORECASE = 1} /amit/' marks.txt

```
## Awk functions 

```awk
awk 'BEGIN {
   a = 30;
   
   if (a==10)
   print "a = 10";
   else if (a == 20)
   print "a = 20";
   else if (a == 30)
   print "a = 30";
}'

```

Certainly! Below is a Markdown table summarizing the built-in string functions in AWK you mentioned, complete with brief descriptions and examples.

| Function                    | Description                                                                               | Example                                                 |
| --------------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------- |
| `asort(arr [, d [, how]])`  | Sorts the array `arr` and replaces the indexes with sequential integers starting at 1.    | `asort(arr); for (i in arr) { print arr[i]; }`          |
| `asorti(arr [, d [, how]])` | Sorts the array `arr` based on array indexes.                                             | `asorti(arr); for (i in arr) { print arr[i]; }`         |
| `gsub(regex, sub, string)`  | Performs global substitution of `regex` with `sub` in `string`.                           | `gsub("World", "Jerry", str);`                          |
| `index(str, sub)`           | Finds the position where `sub` starts in `str`. Returns 0 if not found.                   | `index("One Two Three", "Two");`                        |
| `length(str)`               | Returns the length of `str`.                                                              | `length("Hello, World !!!");`                           |
| `match(str, regex)`         | Returns the index of the first longest match of `regex` in `str`. Returns 0 if not found. | `match("One Two Three", "Two");`                        |
| `split(str, arr, regex)`    | Splits `str` into an array `arr` based on `regex`.                                        | `split("One,Two,Three,Four", arr, ",");`                |
| `printf(format, expr-list)` | Returns a formatted string.                                                               | `printf("sqrt(%f) = %f\n", 1024.0, sqrt(1024.0));`      |
| `strtonum(str)`             | Returns the numeric value of `str`.                                                       | `strtonum("123"); strtonum("0123"); strtonum("0x123");` |
| `sub(regex, sub, string)`   | Replaces the first occurrence of `regex` with `sub` in `string`.                          | `sub("World", "Jerry", "Hello, World");`                |
| `substr(str, start, l)`     | Returns a substring of `str` starting at `start` of length `l`.                           | `substr("Hello, World !!!", 1, 5);`                     |
| `tolower(str)`              | Converts all upper-case characters in `str` to lower-case.                                | `tolower("HELLO, WORLD !!!");`                          |
| `toupper(str)`              | Converts all lower-case characters in `str` to upper-case.                                | `toupper("hello, world !!!");`                          |

Feel free to copy this Markdown table into your Markdown-compatible editor to see the formatted version.





>[!quote] [grep](/obisdian_ntoes/notes_obsidian/Linux/commands/grep.md)
