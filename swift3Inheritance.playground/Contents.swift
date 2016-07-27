//: Playground - noun: a place where people can play

import UIKit

//Inheritance

class Vehicle {
    
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        
        print("I am the parent")
        
    }
    
    

    func drive(speedIncrease: Double) {
        
        currentSpeed += speedIncrease * 2
        
    }
    
    func brake() {
        
        
    }
    



}

class SportsCar: Vehicle {

    
    override init(){
        
        super.init()
        make = "BMW"
        model = "3 Series"
        print("I am the child")
        
        
    }
    
    override func drive(speedIncrease: Double){
        
        currentSpeed += speedIncrease * 3
    }
    
    
}

let car = SportsCar()


class Truck: Vehicle {
    
    override init(){
        
        super.init()
        
        
    }
    
    override func drive(speedIncrease: Double){
        
        currentSpeed += speedIncrease
    }
    
    
    
    
}
