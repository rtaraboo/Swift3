//: Playground - noun: a place where people can play

import UIKit

//Bools

var amICool = true

amICool = false

if true == false || true == true {
    
    print("WTF")
}

var hasDataFinsihedDownloading = false

if !hasDataFinsihedDownloading {
    
    print("Still loading data")
    
}

hasDataFinsihedDownloading = true

if 1 == 2 {
    
    print("Should not be printed")
}

var bankBalance = 500
var itemBalance = 500

if bankBalance >= itemBalance {
    
    print("Buy the item")
    
}

else {
    
    print("You need more money")
}

if itemBalance == bankBalance {
    
    print("You now have no money")
}

var bookTitle1 = "Harry Potter"
var bookTitle2 = "Harry Potter"

if bookTitle1 != bookTitle2 {
    
    print("Fix the spelling")
    
} else if bookTitle1.characters.count > 10 {
    
    print("Title is to long")
    
}



else {
    
    print("Book title looks great")
    
}



