---
date:: 01 04 2023
topic:: Li
type:: Linux
---
# Functions 

## Importing 
To import an function u have to source the file that conteisn the function 
>[!example]
>  *Method 1: using the source command*
**source** /path/to/my_functions.sh
my_function
>Method 2: using the **. operator** 
>**.** /path/to/my_functions.sh 
>my_function

## Functions 
>[!example]
>check_exit_status(){
>function
>}

### IF statment

*[]* - Test commad
>[!example]-
>mynu=300
if [ $mynu -eq 200 ]
then
  echo "The condition is true"
else
  echo xd
fi



| *flag*   | *function*                                                                                                                  |
| -------- | --------------------------------------------------------------------------------------------------------------------------- |
| !        | reverse the statment                                                                                                        |
| -eq      | equal to                                                                                                                    |
| -ne      | not equal to                                                                                                                |
| -gt      | greater then                                                                                                                |
| -f       | does file exist                                                                                                             |
| -d       | does dir exist                                                                                                              |
| 2pipes   | or if one condtion is ture                                                                                                  |
| &&       | and if both conditions are true                                                                                             |
| :        | Returns 0 or true                                                                                                           |
| .        | executes a shell script                                                                                                     |
| bg       | Puts a job into bacgorund                                                                                                   |
| break    | Exist the current loop                                                                                                      |
| continue | resumes the current loop                                                                                                    |
| eval     | eavluates the current exper                                                                                                 |
| exit     | quits the shell                                                                                                             |
| export   | Makes a variable of fucrtiosn avaible to other proggrams that are exexuted frome the shell                                  |
| fg       | bringas                                                                                                                     |
| getopts  | Parsees [Arguments](/obisdian_ntoes/scriptss/Arguments.md) to shell scripts                                                                                      |
| jobs     | lsit bacground processes                                                                                                    |
| readonly | declers a varaible as readonly                                                                                              |
| shift    | move the scrpits input paramiters to the left droppin th firs paramter (usefull for consuming all aprameters one at a time) |
| times    | Prints the user system time                                                                                                 |
| trap     | Traps a signal so the scipt can handleit (unhandeld signals termiante the script)                                           |
| unset    | deletes values from variables or funtion                                                                                    |
| wait     | waits for a bacground process to complete                                                                                                                             |

>[!quote] [She-bang](/obisdian_ntoes/scriptss/She-bang.md) [bash_MAIN](/obisdian_ntoes/notes_obsidian/Linux/commands/bash_MAIN.md)