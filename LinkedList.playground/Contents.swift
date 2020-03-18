// this info came from a tutorial from maxcodes on YouTube

import UIKit


// T is a Swift generic - these can be used for functions that can be used for any type. String, Int, etc.
public class LLNode<T> {
    var value: T
    var next: LLNode?
    var previous: LLNode?
    
    public init(value: T) {
        self.value = value
    }
}


public class LinkedList<T> {
    
    // This typealias just shortens LLNode<T> to "Node". We don't have to put <any> after LLNode.
    public typealias Node = LLNode<T>
    private var head: Node?
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else { return nil }
        while let next = node.next {
            node = next
        }
        return node
    }
}

// Because we used a generic, we can just declare whichever type we want
let list = LinkedList<String>()
list.first
list.last

