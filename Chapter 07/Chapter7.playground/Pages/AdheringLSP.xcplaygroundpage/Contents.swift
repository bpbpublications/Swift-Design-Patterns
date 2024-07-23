//: [Previous](@previous)

import Foundation

protocol Flying {
    func fly()
}

class Bird: Flying {
    func fly() {
        print("Flying")
    }
}

class Penguin {
    // Penguins don't implement the Flying protocol
}


//: [Next](@next)
