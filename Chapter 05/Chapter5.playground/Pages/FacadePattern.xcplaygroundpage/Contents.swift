//: [Previous](@previous)

import Foundation

class SystemFacade {
    private let subsystemA: SubsystemA
    private let subsystemB: SubsystemB
    private let subsystemC: SubsystemC

    init() {
        subsystemA = SubsystemA()
        subsystemB = SubsystemB()
        subsystemC = SubsystemC()
    }

    func operation() {
        subsystemA.operationA()
        subsystemB.operationB()
        subsystemC.operationC()
    }
}

class SubsystemA {
    func operationA() {
        print("Subsystem A operation")
    }
}

class SubsystemB {
    func operationB() {
        print("Subsystem B operation")
    }
}

class SubsystemC {
    func operationC() {
        print("Subsystem C operation")
    }
}

let facade = SystemFacade()
facade.operation()

//: [Next](@next)
