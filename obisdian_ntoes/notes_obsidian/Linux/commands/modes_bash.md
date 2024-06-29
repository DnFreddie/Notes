---
date:: 2023-07-13
type:: Bash
---
[Docs](https://tldp.org/)

## Modes Table 
`U should check weather u have the perrmison to wirte to a log file or smth`
| Mode                    | Description                                                 |
| ----------------------- | ----------------------------------------------------------- |
| `-e` or `-o errexit`    | Exits immediately if any command fails.                      |
| `-u` or `-o nounset`    | Treats unset variables as an error.                          |
| `-x` or `-o xtrace`     | Enables verbose mode, printing each command.                 |
| `-o pipefail`           | ensures that if any command within a pipeline fails, the overall exit status of the pipeline is also considered a failure.       |
| `-o noclobber`          | Prevents overwriting files with redirection.                 |
| `-o noglob`             | Disables pathname expansion with wildcards.                  |
| `-o nocaseglob`         | Enables case-insensitive globbing.                           |
| `-o errexit -o errtrace`| Combination for error handling and capturing failures.       |


>[!quote] [bash_MAIN](/obisdian_ntoes/notes_obsidian/Linux/commands/bash_MAIN.md) 
