//: [Previous](@previous)

import Foundation

protocol Flyweight {
    func operation(extrinsicState: String)
}

class ConcreteFlyweight: Flyweight {
    private let intrinsicState: String

    init(intrinsicState: String) {
        self.intrinsicState = intrinsicState
    }

    func operation(extrinsicState: String) {
        print("Intrinsic: \(intrinsicState), Extrinsic: \(extrinsicState)")
    }
}

class FlyweightFactory {
    private var flyweights: [String: Flyweight] = [:]

    func getFlyweight(key: String) -> Flyweight {
        if let flyweight = flyweights[key] {
            return flyweight
        } else {
            let newFlyweight = ConcreteFlyweight(intrinsicState: key)
            flyweights[key] = newFlyweight
            return newFlyweight
        }
    }
}

let factory = FlyweightFactory()
let flyweightA = factory.getFlyweight(key: "SharedStateA")
let flyweightB = factory.getFlyweight(key: "SharedStateB")

flyweightA.operation(extrinsicState: "State1")
flyweightB.operation(extrinsicState: "State2")

//: [Next](@next)
