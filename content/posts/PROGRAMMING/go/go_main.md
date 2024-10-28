---
date: "2024-10-22T08:31:46+02:00"
draft: false
title: Go Main
---

### Handaling file operation

``` go
    done := make(chan struct{})
    var f *lockedfile.File
    var openErr error

    go func() {
        f, openErr = lockedfile.OpenFile(JOINED, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)
        close(done)
    }()

    select {
    case <-time.After(3 * time.Second):
        return nil, fmt.Errorf("timeout waiting for file lock - another instance may be running")
    case <-done:
        if openErr != nil {
            return nil, fmt.Errorf("error opening joined file: %w", openErr)
        }
    }
```

#### Proper way to closing Files on defer

> **Thsis will collects the error message if file could’nt be closed**

``` go
defer func(){
    f.Close()
}()
```

### Checki the lenght of the stirng

### Casting absolute path in go

*Aparently it’s enough to cast `filepath.Abs` on the file to get the
absolute path*

``` go
func walk(s string, d fs.DirEntry, err error) error {
    if err != nil {
        return err
    }
    if !d.IsDir() {
        absPath, err := filepath.Abs(s)
        if err != nil {
            return err
        }
        fmt.Println(absPath) 
    }
    return nil
}

func Find(dir string, condition string, exec string) {
    absDir, err := filepath.Abs(dir)
    if err != nil {
        fmt.Printf("Error: %v\n", err)
        return
    }

    err = filepath.WalkDir(absDir, walk)
    if err != nil {
        fmt.Printf("Error walking the directory: %v\n", err)
    }
}
```

### ReaderCloser Interface

**It’s for an explicit definition of Reader and Closer interface.**

So let’s say you write some functionality that reads data, but you also
want to close resource after doing it (again not to leak descriptors).

> *You are forcing client of your API to define Read and Close
> interfaces implementations, not just io.Reader.*

``` go
func ...(r io.ReaderCloser) {
    defer r.Close()
    ... // some reading
}
func doIt(rc io.ReadCloser) {
    defer rc.Close()
    buf := make([]byte, 4)
    n, err := rc.Read(buf)
    if err != nil {
        log.Fatal(err)
    }
    fmt.Printf("%s\n", buf[:n])
}
```

------------------------------------------------------------------------

-   [go bitwise operators](posts/PROGRAMMING/go/go_bitwise_operators.md)
-   [go concurency](posts/PROGRAMMING/go/go_concurency.md)
-   [go embed](posts/PROGRAMMING/go/go_embed.md)
-   [go example based
    test](/Notes/posts/PROGRAMMING/go/go_example_based_test)
