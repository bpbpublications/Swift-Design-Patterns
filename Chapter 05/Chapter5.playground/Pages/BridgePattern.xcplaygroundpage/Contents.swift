//: [Previous](@previous)

import Foundation

protocol Abstraction {
    var implementation: Implementation { get set }
    func operation()
}

protocol Implementation {
    func operationImplementation()
}


class ConcreteImplementationA: Implementation {
    func operationImplementation() {
        print("Concrete Implementation A")
    }
}

class ConcreteImplementationB: Implementation {
    func operationImplementation() {
        print("Concrete Implementation B")
    }
}


class RefinedAbstraction: Abstraction {
    var implementation: Implementation

    init(implementation: Implementation) {
        self.implementation = implementation
    }

    func operation() {
        print("Refined Abstraction operation")
        implementation.operationImplementation()
    }
}


let implementationA = ConcreteImplementationA()
let abstractionA = RefinedAbstraction(implementation: implementationA)
abstractionA.operation()

let implementationB = ConcreteImplementationB()
let abstractionB = RefinedAbstraction(implementation: implementationB)
abstractionB.operation()

//: [Next](@next)
