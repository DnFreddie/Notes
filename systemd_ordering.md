### General ordering (dependencies)



#### Wants, Wanted By 

Weakest dependency *Please **activate** together ,but no big deal if you don't*


/lib/systemd/system/friendly-recovery.target

```bash
`Wants=friendly-recovery.service`
```

/lib/systemd/system/motd-news.tmier

```bash
`WantedBy=timers.target`
```

### Requiters Required by
Strong Dependency
*You Must activate these units* **together**

/lib/systemd/system/friendly-recovery.target
```bash 
`Requires=baisc.target`
```

/lib/systemd/system/friendly-recovery.target
```bash 
`RequiredBy=baisc.target`
```
### Explicit Ordering
*In what order are units started*


/lib/systemd/system/friendly-recovery.target
```bash 
`Before=baisc.target`
```

/lib/systemd/system/friendly-recovery.target
```bash 
`After=baisc.target`
```


#### Others 

- **Requisite** 
	like *Requires* but must already be active
- **BindsTo** 
	like *Requires* but more tightly coupled
- **PartOf** 
		 like *Requires*  but only affects starting/stopping
- **Conflicts**
	exclude 2 units from *being active simultaneously*

--- 
[systemd](/systemd.md)

	