##  链表中倒数第k个节点
### 输入一个链表，输出该链表中倒数第k个节点。为了符合大多数人的习惯，本题从1开始计数，即链表的尾节点是倒数第1个节点。例如，一个链表有6个节点，从头节点开始，它们的值依次是1、2、3、4、5、6。这个链表的倒数第3个节点是值为4的节点。

*示例：*
```
给定一个链表: 1->2->3->4->5, 和 k = 2.

返回链表 4->5.
```

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

