+++
title = 'zig'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    
# Using C library 

If u want to incroportate any C libray into zig 
U have to pass `exe.linkLibC();` to the **build.zig**


Example  zig c usage header 

```zig
const c = @cImport({
    @cInclude("utmp.h");
});

const utmp = @import("utmp.zig");
const Allocator = std.mem.Allocator;
const Vector = std.ArrayList;
```
