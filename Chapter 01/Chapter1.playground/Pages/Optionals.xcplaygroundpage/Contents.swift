import Foundation


//Optionals and Type Safety

var middleName: String?  // middleName is an optional String
middleName = nil         // You explicitly set it to nil to indicate the absence of a value

//Optional binding

var age: Int?  // Declare an optional Int
age = 25       // Assign a value to age
age = nil      // age can also be empty

if let personAge = age {
    // age contains a value, and you can use it as personAge
    print("The age is \(personAge)")
} else {
    // age is nil, indicating the absence of a value
    print("The age is unknown.")
}

//Force unwrapping

var name: String? = "Alice"
let unwrappedName = name!  // Force unwrap name
