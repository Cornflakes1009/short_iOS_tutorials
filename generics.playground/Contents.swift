import UIKit

//func add(lhs: Int, rhs: Int) -> Int {
//    return lhs + rhs
//}

// T is a generic type or a Template type in other languages
// This function conforms to the numeric protocol
func sum<T: Numeric>(lhs: T, rhs: T) -> T {
    return lhs + rhs
}

let myNum = sum(lhs: 1.5, rhs: 2)
print(myNum)


struct Stack<T> {
    var contents: [T] = []
    
    mutating func append(item: T) {
        contents.append(item)
    }
    
    mutating func pop() -> T {
        contents.removeLast()
    }
}

// Because I'm using a generic, I have to declare the type of stack
var stack = Stack<String>()
stack.append(item: "abc")
print(stack.pop())
