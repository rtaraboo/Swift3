//: Playground - noun: a place where people can play

import UIKit


//Type Explicit
var str : String = "Hello, playground"


//Type Inference
var firstName = "Rosario"
var lastName = "Tarabocchia"

var age = 36

//String Concation

var fullName = firstName + " " + lastName

// String Intepolation
var fullName2 = "\(firstName) \(lastName) is \(age)."

fullName.append(" Jr.")

var bookTitle = "revenge of the nerds"

bookTitle = bookTitle.capitalized

var trollInChatRoom = "HAHAHAHA I AM SO FUNNY"
trollInChatRoom = trollInChatRoom.lowercased()

//Oh My Heck, Fetch

var sentence = "What the heck! This is fetch!"

if sentence.contains("heck") || sentence.contains("fetch") {
    
    sentence.replacingOccurrences(of: "heck", with: "tuna")
    sentence.replacingOccurrences(of: "fetch", with: "fish")
    
}

