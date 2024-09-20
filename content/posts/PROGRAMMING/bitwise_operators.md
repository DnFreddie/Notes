+++
title = 'Bitwise operators'
date = 2024-09-20T23:58:04+02:00
draft = false
+++




You can store up to **8 boolean flags** in a single bit.

[Video](https://www.youtube.com/watch?v=igIjGxF2J-w)


### Defining the Bitflags (<<)

```go
type flag uint

const (
    // Shifts the bit for two places for the rest of the flags 
    // so they are unique 
    READ flag = 1 << iota 
    EXECUTE
    WRITE 
    // You can also combine all keywords into one 
    ALL flag = READ | WRITE | EXECUTE
)
```

### Passing the BitFlags (|)

 *checks what values are passed and applies them:*

```go
func test(f flag) {
    // Function implementation here
}

// This will combine them 
// So the test will have read and write permissions
func main() {
    test(READ | WRITE)
    // Or to get all 
    test(ALL)
}
```

### Checking the BitFlags (&)
*checks if a specific flag matches:*

```go
switch {
case flag & READ:
fmt.Println("You can read :)")
}
```


