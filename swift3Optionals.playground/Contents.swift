//: Playground - noun: a place where people can play

import UIKit

//Optionals

//Dont ever unwrap something!

var lotteryWinnings: Int?

//Checks

if lotteryWinnings != nil {
    
    print(lotteryWinnings!)
}

//Preferred Way

if let winnings = lotteryWinnings {
    
    print(winnings)
}

class Car {
    
    var model: String?
    
}

var vehicle: Car?

vehicle = Car()
vehicle?.model = "Bronco"

//if let v = vehicle {
//    if let m = v.model{
//        print(m)
//        
//    }
//    
//}

if let v = vehicle, let m = v.model {
    
    print(m)
    
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars where carArr.count > 0 {
    // only executed if not nil and more then 0
    
    
} else {
    
    cars?.append(Car())
    print(cars?.count)
}

class Person {
//    var age: Int!
    
    var age = 0
    
    func setAge(newAge: Int) {
        
        self.age = newAge
        
    }
    
}



var jack = Person()


class Dog {
    
    var species: String
    
    init(someSpecies: String) {
        
        self.species = someSpecies
    }
    
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)
