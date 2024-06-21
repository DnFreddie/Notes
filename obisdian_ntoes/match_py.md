---
date:: 17  05 2023
type:: Python 
---
## Pattern Matching

```
>>> def file_handler_v1(command):
...     match command.split():
...         case ['show']:
...             print('List all files and directories: ')
...             # code to list files
...         case ['remove', *files]:
...             print('Removing files: {}'.format(files))
...             # code to remove files
...         case _:
...             print('Command not recognized')
```


>[!quote]  [regex](/obisdian_ntoes/notes_obsidian/ZPythonref/regex.md) [python_functions](/obisdian_ntoes/notes_obsidian/ZPythonref/python_functions.md)