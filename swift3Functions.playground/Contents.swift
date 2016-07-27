//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Functions

var shapeSide1 = 12
var shapeSide2 = 24


func calculateArea(length: Int, width: Int) -> Int{
    
    return length * width
    
}

let area = calculateArea(length: shapeSide1, width: shapeSide2)

var bankAccountBalance = 500.00
var shoes = 350.00

func purchaseItem(currentBalance: inout Double, itemPrice: Double) {
    
    if itemPrice <= currentBalance {
        print("Item puchased for $\(itemPrice)")
        currentBalance = currentBalance - itemPrice
        
        
    } else {
        
        print("The item is to much!")
        
    }
    
}

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: shoes)

var retroShirt = 123.40

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: retroShirt)

