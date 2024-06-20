---
"date:": 2023-09-03
"type:": Linux
---
# Bash Programmable Completion Summary

## Overview
- Programmable completion in Bash is triggered when word completion is attempted for an argument to a certain command.
- This command must have a completion specification (compspec) defined using the `complete` builtin command.
  
## How It Works

### Identifying Command Name
1. **Empty String**: If the command word is empty, a compspec defined with the `-E` option to `complete` is used.
2. **Full Pathname**: If the command word is a full pathname, the system first searches for a compspec for the full pathname.
3. **Fallback**: If no compspec is found, the system uses the `-D` option to `complete` for a default. If no default exists, alias expansion is attempted.

### Generating Matching Words
- Once a compspec is found, it is used to generate a list of matching words.
- If no compspec is found, default Bash completion occurs.

### Steps for Generating Matches
1. **Actions specified by compspec**: Matches must be prefixed by the word being completed.
2. **Pathname Expansion with -G option**: The `FIGNORE` variable filters matches.
3. **String argument with -W option**: The string is split and expanded. Matches are then prefix-matched against the word being completed.
4. **Commands/Functions with -F and -C**: These are invoked with certain environment variables (`COMP_LINE`, `COMP_POINT`, etc.) set.

### Filters, Prefixes, and Suffixes
- A filter specified with the `-X` option is applied to the list of generated matches.
- Prefix and suffix specified with `-P` and `-S` are added to each member of the completion list.

### Additional Options
- `-o dirnames`: Triggers directory name completion if no matches are generated.
- `-o plusdirs`: Adds directory name completions to the result.
- `-o bashdefault`: Tries Bash default completions if compspec generates no matches.
- `-o default`: Tries readline’s default completion if no matches are generated.

### Dynamic Completion
- Completion can be modified dynamically using shell functions.
- A function that returns an exit status of 124 triggers reevaluation of the compspec.

### Example for Dynamic Completion
Here's an example function for dynamically loading completions.
```bash
_completion_loader() {
    . "/etc/bash_completion.d/$1.sh" >/dev/null 2>&1 && return 124
}
complete -D -F _completion_loader -o bashdefault -o default
```

This summary covers the essential features and behaviors of programmable completion in Bash as of GNU Bash 5.1, released in October 2020.

>[!quote] [bash_MAIN](/obisdian_ntoes/notes_obsidian/Linux/commands/bash_MAIN.md)