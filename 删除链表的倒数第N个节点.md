##  删除链表的倒数第N个节点
### 给定一个链表，删除链表的倒数第 n 个节点，并且返回链表的头结点。

*示例：*
```
给定一个链表: 1->2->3->4->5, 和 n = 2.

当删除了倒数第二个节点后，链表变为 1->2->3->5.
```

*说明：*

给定的 n 保证是有效的。

*进阶：*

你能尝试使用一趟扫描实现吗？

```swift
 // Definition for singly-linked list.
     public class ListNode {
         public var val: Int
         public var next: ListNode?
         public init() { self.val = 0; self.next = nil; }
         public init(_ val: Int) { self.val = val; self.next = nil; }
         public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
     }
    

    class Solution {
        
        func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
            if head == nil {
                return nil
            }
            
            var items: [String: ListNode] = [:]
            
            var node = head
            print(node?.val)
            var index = 0
            
            while node?.next != nil {
                items[String(index)] = node
                let temp = node?.next
                node = temp
                index += 1
            }
            
            let curr = index + 1 - n
            let currentNode = items[String(curr)]
            print(currentNode?.val)
            
            let pre = index + 1 - n - 1
            let preNode = items[String(pre)]
            print(preNode?.val)
            
            if preNode != nil {
                if currentNode?.next != nil {
                    preNode?.next = currentNode?.next
                }
                else {
                    preNode?.next = nil
                }
            }
            else {
                if currentNode?.next != nil {
                    head?.val = currentNode?.next?.val ?? 0
                    head?.next = currentNode?.next?.next
                }
                else {
                    return nil
                }
            }
            
            return head
        }
    }
}
```

