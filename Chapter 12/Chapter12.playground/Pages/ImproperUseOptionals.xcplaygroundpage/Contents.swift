//: [Previous](@previous)

import Foundation

var optionalString: String? = "Hello, World!"

// Improper use of forced unwrapping
let unwrappedString = optionalString!

print(unwrappedString) // Output: "Hello, World!"

// If optionalString is nil, this will result in a runtime crash



//: [Next](@next)
