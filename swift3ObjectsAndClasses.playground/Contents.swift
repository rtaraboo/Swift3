//: Playground - noun: a place where people can play

import UIKit

//Objects and Classes

class Vehicle {
    
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    
    func drive() {
        // accelerate the vehicle
        
    }
    
    func brake() {
        
        
        
    }
    
}

class NewVC: UIViewController {
    
    
}

let bmw = Vehicle()
bmw.model = "328i"

//Objects

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByRefeence(vehicle: Vehicle) {
    
    vehicle.model = "Cheese"
    
}

print(ford.model)

passByRefeence(vehicle: ford) //Passed by reference

print(ford.model)















