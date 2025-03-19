---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: "Modes in Bash"
---

[Documentation](https://tldp.org/)

## Modes Table

> **Note**: Ensure you have permission to write to a log file or other necessary locations.

| Mode                  | Description                                                                                     |
|-----------------------|-------------------------------------------------------------------------------------------------|
| `-e` or `-o errexit`  | Exits immediately if any command fails.                                                         |
| `-u` or `-o nounset`  | Treats unset variables as an error.                                                             |
| `-x` or `-o xtrace`   | Enables verbose mode, printing each command before execution.                                   |
| `-o pipefail`         | Ensures that if any command within a pipeline fails, the overall pipeline exit status is a fail.|
| `-o noclobber`        | Prevents overwriting files through redirection.                                                 |
| `-o noglob`           | Disables pathname expansion with wildcards.                                                     |
| `-o nocaseglob`       | Enables case-insensitive globbing.                                                              |
| `-o errexit -o errtrace` | Combines error handling and failure capture.                                                 |

--------------------------------------------------------------------------------------------------------------------------

* [Back to Bash Overview](/Linux/commands/bash_MAIN)

