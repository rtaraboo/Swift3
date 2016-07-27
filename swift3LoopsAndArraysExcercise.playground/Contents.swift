//: Playground - noun: a place where people can play

import UIKit

var stringArray = [String]()

var doubleArray: [Double] = [10.2, 23.5, 45.4, 56.3]

var intArray = [1, -2, -5, 69, 100]

stringArray.append("Rosario")
stringArray.append("Lindsay")
stringArray.append("Declan")


doubleArray.append(34.5)
doubleArray.append(34.4)
doubleArray.append(56.3)

intArray.append(4)
intArray.append(56)
intArray.append(34)

stringArray.remove(at: 0)
doubleArray.removeLast()
intArray.removeAll()

var oddNumbers = [Int]()

for x in 1...100 {
    
    if x % 2 != 0 {
        
        oddNumbers.append(x)
    }
}

print(oddNumbers)

var sums = [Int]()

for number in oddNumbers {
    
    let newNumber = number + 5
    
    sums.append(newNumber)
    
}

print(sums)

var index = 0
repeat {
    
    print("The sum is: \(sums[index])")
    index += 1
    
} while index < sums.count
