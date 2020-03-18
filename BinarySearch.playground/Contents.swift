import UIKit

let numbers = [1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 55, 56, 57, 58, 61, 62]

func binarySearch(array: [Int], key: Int) -> Bool{
    
    // first check for edge cases such as if the array is empty
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    // checking if the item is not in the array
    if key > array[maxIndex] || key < array[minIndex] {
        print("\(key) is not in the array")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    return false
}


binarySearch(array: numbers, key: 6)
