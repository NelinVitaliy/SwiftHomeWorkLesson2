//
//  main.swift
//  SwiftHomeWorkLesson2
//
//  Created by N3L1N on 15/12/2021.
//

import Foundation

//1.
func evenOrUneven(_ num:Int){
    if (num % 2 == 0) {
        print("Even number")
    } else {
        print("Uneven number")
    }
}

evenOrUneven(30)
evenOrUneven(53)

//2.
func dividedByTree(_ n:Int){
    if (n % 3 == 0) {
        print("Мultiples of the number 3")
    } else {
        print("Is't multiples of the number 3")
    }
}

dividedByTree(33)
dividedByTree(23)



//3.
var array = [Int] (1...100)
print("Basic array: \(array)")


//4.
for element in array{
    if (element % 2) == 0 || (element % 3) != 0 {
        array.remove(at: array.firstIndex(of: element)!)
    }
}
print("Modified array: \(array)")


//5.
func fibonacci(count: Int) -> [Float] {
    var array : [Float] = [1,2]
    
    for i in 0...count {
        array.append(array[i] + array[i + 1])
    }
    return array
}

print(fibonacci(count: 100))


//6.
var arr = [Int](2...600)

for divider in arr {
    for element in arr {
        if element % divider == 0 && element != divider {
            arr.remove(at: arr.firstIndex(of: element)!)
        }
    }
    if arr.count > 100 {
        arr.removeLast()
    }
}
 
arr.removeAll(){i in i == 0}

print(arr)

