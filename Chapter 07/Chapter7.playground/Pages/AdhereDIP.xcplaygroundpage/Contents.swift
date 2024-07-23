//: [Previous](@previous)

import Foundation

protocol Engine {
    func start()
}

class BasicEngine: Engine {
    func start() {
        // Basic engine start logic
    }
}

class AdvancedEngine: Engine {
    func start() {
        // Advanced engine start logic
    }
}

class Car {
    private let engine: Engine

    init(engine: Engine) {
        self.engine = engine
    }

    func startCar() {
        engine.start()
        // Car-specific logic
    }
}


let basicEngine = BasicEngine()
let carWithBasicEngine = Car(engine: basicEngine)
carWithBasicEngine.startCar()

let advancedEngine = AdvancedEngine()
let carWithAdvancedEngine = Car(engine: advancedEngine)
carWithAdvancedEngine.startCar()





//: [Next](@next)
