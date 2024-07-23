//: [Previous](@previous)

import Foundation

protocol Cloneable {
    func clone() -> Self
}


class ConcretePrototype: Cloneable {
    var property: Int

    required init(property: Int) {
        self.property = property
    }

    func clone() -> Self {
        return type(of: self).init(property: self.property)
    }
}


let original = ConcretePrototype(property: 42)
let cloned = original.clone()

print("Original Property: \(original.property)")
print("Cloned Property: \(cloned.property)")


//: [Next](@next)
