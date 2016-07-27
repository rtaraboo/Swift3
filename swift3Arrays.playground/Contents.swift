//: Playground - noun: a place where people can play

import UIKit


//Arrays

var employee1Salary = 40000.0
var employee2Salary = 50000.0
var employee3Salary = 100000.0
var employee4Salary = 10000.0

var employeeSalaries = [40000.0, 50000.0, 100000.0, 10000.0]

employeeSalaries.append(39000.30)

print(employeeSalaries.count)

employeeSalaries.remove(at: 1)

print(employeeSalaries.count)

//How to initilize empty array

var students = [String]()

print(students.count)

students.append("Rosario")
students.append("Lindsay")
students.append("Declan")

