The child process that **finish** his job but it's **not being cleaned** 
*Ussualy have to get rid of the parent*
*find zombie processes*

```bash
ps ux | awk '{if($8=="Z") print}'
```
When u're done check for u little creations



### Spawn zombies with python 
[Docs](https://medium.com/naukri-engineering/creating-troubleshooting-the-zombie-process-in-python-f4d89c46a85a)
```python
import os, sys, time
ttlForParent = 60;
for i in range(0, 10):
# This creates the copy of the main process as 
# a child process but with diffrent PID 
   pid_1 = os.fork()
   print(pid_1)
   print("Hello Worlds!!!")
   if pid_1 == 0:
       sys.exit();
time.sleep(ttlForParent);
os.wait()
```


--- 
[awk_command](/awk_command.md)