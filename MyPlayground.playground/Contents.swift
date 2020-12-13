
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
        while node != nil {
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

let node = ListNode.init(1)
node.next?.val = 2
node.next?.next?.val = 3
node.next?.next?.next?.val = 4
node.next?.next?.next?.next?.val = 5

let soul = Solution.init()
soul.removeNthFromEnd(node, 2)

print(node)
