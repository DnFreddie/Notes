---
date: "2024-10-23T11:35:13+02:00"
draft: false
title: Makefile
---

## Sturcture
``` bash
# Define PHONY targets to prevent conflicts with files named like the target
.PHONY: build test install clean

# First input is the defult one 
build: cmd/main
    pp -o qizz cmd/main

#The test target now depends on build
#The -- in carton exec -- separates the command from any options carton might interpret
test: build
    carton exec -- perl tests/*


install:
    carton install

clean:
    rm -f qizz

all: install build test

```
### Make for python 

```bash
.PHONY: test clean

test:
	PYTHONPATH=. python -m unittest discover -s . -p "test_*.py" -v


clean:
	find . -type d -name "__pycache__" -exec rm -r {} +
	find . -type f -name "*.pyc" -delete
	find . -type f -name "*.pyo" -delete
```
