//: [Previous](@previous)

import Foundation

// Step 1: Define the Handler Protocol

class Engine {
    func start() {
        // Engine start logic
    }
}

class Car {
    private let engine: Engine

    init() {
        self.engine = Engine()
    }

    func startCar() {
        engine.start()
        // Car-specific logic
    }
}


//: [Next](@next)
