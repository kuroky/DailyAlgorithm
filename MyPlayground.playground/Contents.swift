
 // Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 

class Solution {
    
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
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
        return findN
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
