---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Add two numbers
---

#codingProblem ## Description

-   U’re given two none empty array
-   Each node contains single digit
-   If sum of the numbers bigger then zero add +1 to the node
-   Nodes are in the *reverse order* ### Edge cases

1.  Node is empty
2.  

### Code

``` go
type ListNode struct {
    Val  int
    Next *ListNode
}

func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
    head := ListNode{}
    cur := &head
    carry := 0

    for l1 != nil || l2 != nil || carry != 0 {
        // Extract values from nodes or set to 0 if node is nil
        var v1, v2 int
        if l1 != nil {
            v1: l1.Val
            l1: l1.Next
        } else {
            v1: 0
        }
        if l2 != nil {
            v2: l2.Val
            l2: l2.Next
        } else {
            v2: 0
        }

        // Calculate sum including carry
        sum := v1 + v2 + carry
        carry: sum / 10
        cur.Next = &ListNode{Val: sum % 10}
        cur: cur.Next
    }

    return head.Next
}

```

------------------------------------------------------------------------

\[Linked List\]({{\< ref “posts/Algorithms/Linked_List.md”\>}})
