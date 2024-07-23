//: [Previous](@previous)

import Foundation

class Person {
    var name: String
    var car: Car?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deallocated")
    }
}

class Car {
    var owner: Person?
    
    deinit {
        print("Car is being deallocated")
    }
}

var john: Person? = Person(name: "John")
var bmw: Car? = Car()

john?.car = bmw
bmw?.owner = john

john = nil
bmw = nil






//: [Next](@next)
