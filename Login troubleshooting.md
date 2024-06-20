[Worth loooking](https://www.secur.cc/how-to-troubleshoot-linux-user-issues/)
### Troubleshooting procces 
1. check last log [[Logging.canvas|Logging]]
	- *last or lastb*
2. check if user is created 
	- [getent](/getent.md)
3. Check gui session
	- ***sudo sytemctl status graphical.target***


### Tty issues 
U can check weather the terminal sesison where corrupted in 
#dev
***/dev/tty***
- If the file is corupted it will have **-** in front if *c* then the file is ok 
	- Use **mknod**

- Check if the [getty](https://0pointer.net/blog/projects/serial-console.html) service is  up
	- It's responsible for the login prompt

#### Check if the account is locked
```bash 
sudo passwd -S user
```

### Check for ulimit 
[ulimit docs](https://phoenixnap.com/kb/ulimit-linux-command)
```bash
ulimit user
```