//: Playground - noun: a place where people can play

import UIKit

//Dictionaries

var namesOfIntergers = [Int: String]()

//Add item to dictionary

namesOfIntergers[3] = "three"
namesOfIntergers[44] = "forty four"

//Clean out dictionary

namesOfIntergers = [:]

var airports: [String : String] = ["YYZ": "Toronto", "LAX": "Los Angeles International"]

print("The airport dictionary has: \(airports.count) items")

if airports.isEmpty {
    
    print("The airports dictionary is empty")
}

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

airports["DEV"] = "Denver International"

//delete entry

airports["DEV"] = nil

//For In Loop in dictionary

for (airportCode, airportName) in airports {
    
    print("\(airportCode): \(airportName)")
    
    
    
}

for key in airports.keys {
  
    print("Key: \(key)")
}



for val in  airports.values {
    
    print("Value: \(val)")
    
}





