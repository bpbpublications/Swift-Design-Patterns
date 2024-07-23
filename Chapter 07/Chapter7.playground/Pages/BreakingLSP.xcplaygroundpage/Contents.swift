//: [Previous](@previous)

import Foundation

class Bird {
    func fly() {
        print("Flying")
    }
}

class Penguin: Bird {
    override func fly() {
        print("Sorry, I can't fly") // Violates LSP
    }
}

//: [Next](@next)
