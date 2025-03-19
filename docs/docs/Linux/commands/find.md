---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: find
---

## Basic Usage

### 1. Look for Executable Files

``` bash
find . -executable
```

### 2. Look for Broken Links

``` bash
find . -xtype l
```

### 3.  Based on Content Changes

``` bash
find . -mtime -1
```

-   **Explanation**: Finds files that were modified in the last day.

### 4.  Based on Metadata or Attribute Changes

``` bash
find /path/to/directory -ctime -2
```

-   **Explanation**: Finds files where metadata or attributes were
    changed in the last two days.

### 5.  Based on Last Accessed Time

``` bash
find /path/to/directory -atime -1
```

-   **Explanation**: Finds files that were accessed in the last day.

### 6.  Changed in the Last Hour

``` bash
find /path/to/directory -mmin -60
```

-   **Explanation**: Finds files modified within the last 60 minutes.

### 7.  Changed Earlier than a Specific Date

``` bash
find . -type f -newermt 2019-07-24
```

-   **Explanation**: Finds files modified after July 24, 2019.


###  [Hardlink](posts/Linux/hardlink)

```bash
find /path/to/directory -samefile myfile.txt
```

## Sorting and Filtering

### Sort by Size

``` bash
find . -size +10G
```

-   **Explanation**: Finds files larger than 10 GiB.

**Tip:** You can use the following size suffixes: - **‘k’** for
kibibytes (KiB) - **‘M’** for mebibytes (MiB) - **‘G’** for gibibytes
(GiB)

## Using Wildcards

-   **`[]`**: Matches the characters that appear within the square
    brackets.

-   **`*`**: Matches any character sequence of any length (including
    none). For example:

    -   A search for `*at` will match “cat”, “hat”, and “bat”.

### Example: Excluding Specific Characters

-   **`[!char]`**: Excludes specific characters inside the square
    brackets.

## Visual Guide

> ![Find Possibilities](FindPossibilities.visual.png)

## Searching Files via Permissions

### Finding Files with Specific Permissions

#### Finding Files with SUID (Set User ID)

``` bash
find / -user root -perm -4000
```

-   **Explanation**: Finds files owned by the root user with SUID
    permissions set.

------------------------------------------------------------------------
