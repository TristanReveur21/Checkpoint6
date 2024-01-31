//
//  Checkpoint6.swift
//  
//
//  Created by Михаил Медведев on 31.01.2024.
//

import Foundation

//Create a struct to store information about a car:
//including its model, number of seats, and current gear,
//then add a method to change gears up or down. 

struct CarInfo {
    let model: String
    let numberOfSeats: Int
    private (set) var currentGear: Int {
        willSet {
            print("You was on gear \(currentGear)")
        }
        didSet {
            print("Now you're current gear is \(currentGear)")
        }
    }
    
    mutating func gearUp(on: Int) {
        if currentGear + on == 10 {
            currentGear += on
            print("You've reach the limmit!")
        } else if currentGear + on > 10 {
            print("\(model) has only 10 gears, you can go higher!")
        } else {
            currentGear += on
        }
    }
    mutating func gearDown(on: Int) {
        if currentGear - on == 0 {
            currentGear -= on
            print("You you're in neutral, switch to drive mode")
        } else if currentGear - on < 0 {
            print("There is no more gears in \(model)")
        } else {
            currentGear -= on
        }
    }
}


var car = CarInfo(model: "Tesla Cybertrack", numberOfSeats: 5, currentGear: 5)
print(car)

car.gearDown(on: 5)
car.gearUp(on: 5)
car.gearDown(on: 3)
car.gearDown(on: 1)
car.gearUp(on: 7)
car.gearUp(on:2)
car.gearUp(on: 1)
car.gearDown(on: 3)
car.gearDown(on: 7)
car.gearDown(on: 1)
