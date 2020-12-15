##  找出单向链表中倒数第 k 个节点
### 实现一种算法，找出单向链表中倒数第 k 个节点。返回该节点的值。

*示例：*
```
输入： 1->2->3->4->5 和 k = 2
输出： 4
```

```swift
  /**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func kthToLast(_ head: ListNode?, _ k: Int) -> Int {
        var items: [String: ListNode] = [:]
        var current = 0
        var node = head
        
        while node != nil {
            items[String(current)] = node
            let next = node?.next
            node = next
            current += 1
        }
        
        let find = current - k
        let findN = items[String(find)]
        return findN?.val ?? 0
    }
}
```

