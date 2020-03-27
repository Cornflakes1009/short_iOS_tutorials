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
    
    // Counting nodes in a list
    public var count: Int {
        guard var node = head else { return 0 }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    public var print: String {
        var stringArray = "["
        guard var node = head else { return stringArray + "]" }
        while let next = node.next {
            stringArray += "\(node.value), "
            node = next
        }
        // putting in the last node because there isn't a next. This should also work if there's only 1 node
        stringArray += "\(node.value)"
        return stringArray + "]"
    }
    
    // Appending nodes
    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            // at least we have a node in the list
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            // no nodes in list
            head = newNode
        }
    }
}

// Because we used a generic, we can just declare whichever type we want
let list = LinkedList<String>()
list.first
list.last
list.append(value: "maxcodes.io")
list.append(value: "harold.io")
list.count
list.print
