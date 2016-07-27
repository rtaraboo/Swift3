//: Playground - noun: a place where people can play

import UIKit

// Loops


// Bad Way
var employee1Salary = 40000.0
var employee2Salary = 50000.0
var employee3Salary = 100000.0
var employee4Salary = 10000.0

employee1Salary = employee1Salary + (employee1Salary * 0.10)
employee2Salary = employee2Salary + (employee2Salary * 0.10)
employee3Salary = employee3Salary + (employee3Salary * 0.10)
employee4Salary = employee4Salary + (employee4Salary * 0.10)

// Little Better But Still Long

var salaries = [40000.0, 50000.0, 100000.0, 10000.0, 44000.0, 53400.0, 105000.0, 18000.0]

salaries[0] = salaries[0] + (salaries[0] * 0.10)
salaries[1] = salaries[1] + (salaries[1] * 0.10)
salaries[2] = salaries[2] + (salaries[2] * 0.10)
salaries[3] = salaries[3] + (salaries[3] * 0.10)


//While Loop
var index = 0
repeat {
    
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
    
} while (index < salaries.count)

//For In Loop

for x in 1...5 {
    
    print("Index: \(x)")
}


for i in 0..<salaries.count {
    
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    
}

//For Each Loop

for salary in salaries {
    
    print("Salary: \(salary)")
}
