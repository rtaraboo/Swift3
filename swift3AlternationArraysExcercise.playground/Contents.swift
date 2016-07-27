//: Playground - noun: a place where people can play

import UIKit

//If arryas are the same

//let arr1 = ["a", "b", "c"]
//let arr2 = ["bo", "ro", "me"]
//
//func alternateArrays(array1: [String], array2: [String]) -> [String] {
//    
//    var index = 0
//    
//    var newArr = [String]()
//    
//    repeat {
//        
//        newArr.append(arr1[index])
//        newArr.append(arr2[index])
//        index += 1
//    
//    } while index < arr1.count
//    
//    
//    return newArr
//    
//}
//
//var newArr1 = alternateArrays(array1: arr1, array2: arr2)
//
//print(newArr1)


let arr1 = ["a", "b", "c"]
let arr2 = ["bo", "ro", "me", "la", "te", "do"]

func mixTheArrays(array1: [String], array2: [String]) -> [String]{
    
    if array1.count == 0 {
        
        return array2
        
    }
    
    else if array2.count == 0 {
        
        return array1
        
    }
    
    else {
        
        var maxCount : Int
        var newArr = [String]()
        
        if array1.count >= array2.count {
            
            maxCount = array1.count
        } else {
            
            maxCount = array2.count
        }
        
        for x in 0..<maxCount {
            
            if array1.count > x {
                
                newArr.append(array1[x])
                
            }
            
            if array2.count > x {
                
                newArr.append(array2[x])
                
            }
            
        }
        
        
        
        
         return newArr
        
        
    }
    
    
}

var result = mixTheArrays(array1: arr1, array2: arr2)

print(result)
