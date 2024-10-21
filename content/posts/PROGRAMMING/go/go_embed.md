---
date: "2024-10-15T12:53:43+02:00"
draft: false
title: Go embed
---

*It ascess files at `runtime` that have been **embeded at compile
time*** package embed // import “embed”

Package embed provides access to files embedded in the running Go
program.

Go source files that import “embed” can use the //go:embed directive to
initialize a variable of type string, \[\]byte, or FS with the contents
of files read from the package directory or subdirectories at compile
time.

For example, here are three ways to embed a file named hello.txt and
then print its contents at run time.

Embedding one file into a string:
