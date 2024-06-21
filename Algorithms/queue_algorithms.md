---
date:: 2023-06-30
type:: Algorithms
aliases:: queue
---
## Que
Its a linked list that only allows insertions through first and last elmeent 

==First in First out==
- *Its  a singly linked list*

- Adding 
	-  *We just update the   tail of this structure*
- Poping 
	- *we pop from the head*

![Pasted_image_20230702114452.png](/static/Pasted_image_20230702114452.png)
## Code implematation 


>[!example]-
>![ImplementaionQue_visual.png](/static/ImplementaionQue_visual.png) 

```
<T> = {
  value: T;
  next?: QueueNode<T>;
}

export default class Queue<T> {
  public length: number;
  private head?: QueueNode<T>;
  private tail?: QueueNode<T>;

  constructor() {
    this.head = this.tail = undefined;
    this.length = 0;
  }

  enqueue(item: T): void {
    const newNode: QueueNode<T> = {
      value: item,
      next: undefined,
    };

    if (!this.head) {
      this.head = newNode;
      this.tail = newNode;
    } else {
      this.tail!.next = newNode;
      this.tail = newNode;
    }

    this.length++;
  }

  dequeue(): T | undefined {
    if (!this.head) {
      return undefined;
    }

    const head = this.head;
    this.head = this.head.next;
    this.length--;

    if (!this.head) {
      this.tail = undefined;
    }

    return head.value;
  }

  peek(): T | undefined {
    return this.head?.value;
  }
}


```
 
>[!quote] [Linked List](/Algorithms/Linked List.md) [stack_algorithms](/Algorithms/stack_algorithms.md)