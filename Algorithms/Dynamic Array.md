---
date:: 2023-07-03
type:: Algorithms
---

A dynamic array, also known as  a **vector**, provides array access with the ability to grow dynamically when needed. 

- **Runtime Complexity:** O(N), where N is the number of elements in the array.
- **Main Vectors:**
  - *Length:* Tracks the number of elements currently stored in the array.
  - *Capacity/Size* Represents the total size of the array, including both used and unused slots.
  - *Deletion:* Removing elements from the array might require shifting elements to fill the gap, but the actual value doesn't have to be deleted since the length keeps track of what is in the array.
### Expending
When exceeding the capacity of the array, a new array with increased capacity is created, and all existing elements are **copied** to the new array.

### Queue-Like Operations

Dynamic arrays can be used to implement queue-like operations efficiently:

- **Enqueuing:** Adding elements to the end of the array might require shifting elements if the capacity is exceeded.
- **Dequeuing:** Removing elements from the front of the array requires shifting all remaining elements to the left to fill the gap created by dequeuing.
 
  ---
  [ring buffer](/Algorithms/ring buffer.md) [[Static Array]]