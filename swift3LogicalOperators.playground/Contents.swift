//: Playground - noun: a place where people can play

import UIKit

//Logical Not Operator 

let allowedEntry = false

if !allowedEntry {
    
    print("Access Denied")
}

let enteredDoorCode = true
let passedRetinaScanned = false
let iAmTomCruise = true

if enteredDoorCode && passedRetinaScanned || iAmTomCruise{
    
    print("Welcome")
}

else {
    
    print("Access Denied")
}


let hadDoorKey = false
let knowOverRidePassword = true

if hadDoorKey || knowOverRidePassword {
    print("Welcome")
}

else {
    
    print("Access Denied")
}
