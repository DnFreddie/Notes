+++
title = 'Longest Sub string Without Repeating Characters'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ## Description 
Given a string s, find the length of the longest 
*subsisting* without repeating characters.


### Edge cases 
- Length string might be one character


### Hints 
- We have to track *index* 
- We can store the character in the set 
- We have to track the max length 
	- if **current length > max length max length = current length**

#### Code:
```go 
func lengthOfLongestSubstring(s string) int {
    // Map to store the last index where a character appeared
    lastSeen := make(map[byte]int)
    
    // Variables to track the start and end of the window
    start, maxLen := 0, 0
    
    // Iterate through the string
    for end := 0; end < len(s); end++ {
        // If the character at the end is already in the window,
        // update the start of the window to the next index of the repeated character
        if lastIdx, found := lastSeen[s[end]]; found && lastIdx >= start {
            start = lastIdx + 1
        }
        
        // Update the last seen index of the current character
        lastSeen[s[end]] = end
        
        // Update the maximum length if the current substring is longer
        maxLen = max(maxLen, end-start+1)
    }
    
    return maxLen
}

   
```

--- 
[[Algorithms.canvas|Algorithms]]