//: [Previous](@previous)

import Foundation

class Person {
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) has been deallocated")
    }
}

class Apartment {
    let unit: String
    var occupant: Person?
    
    init(unit: String) {
        self.unit = unit
    }
    
    deinit {
        print("Apartment \(unit) has been deallocated")
    }
}

var rahul: Person?
var apartmentUnit123: Apartment?

rahul = Person(name: "Rahul")
apartmentUnit123 = Apartment(unit: "123")
rahul?.apartment = apartmentUnit123
apartmentUnit123?.occupant = rahul // Now, both persons and the apartment hold references to each other.
rahul = nil
apartmentUnit123 = nil


//Solution

/*
 
 class Apartment {
     let unit: String
     weak var occupant: Person?  // Use 'weak' to break the retain cycle
     
     init(unit: String) {
         self.unit = unit
     }
     
     deinit {
         print("Apartment \(unit) has been deallocated")
     }
 }

 
 */
