
[Docs](https://linuxhandbook.com/journalctl-command/)
### Filter logs based on UID, GID and PID
```bash 
journalctl _PID=1234
```
### Show a specified log level

*This is for the error*
`journalctl -p 3 -xb`

**-p, --priority=**

`Disclaimer` To see boot time use 
[systemd-analyze]


**-b --boot=** *0 is for current*
	List sessions **--list-boots**

**--disk-usage** to see if logs doesn't float the system 

| Priority | Code    |
|----------|---------|
| 0        | emerg   |
| 1        | alert   |
| 2        | crit    |
| 3        | err     |
| 4        | warning |
| 5        | notice  |
| 6        | info    |
| 7        | debug   |


U can  also specfie  the range 
example:

```bash
jounalct journalctl -p 4..6 -b0
```
**Search for a specific unit**
[[systemd#Units|units]]
```bash
journalctl -u
```





To view the logs in the **reverse order**

```bash
journalctl -r
```

**In real time**

```bash
journalctl -f
```

**[Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md) message**

```bash
journalctl -k
```


