//: [Previous](@previous)

import Foundation

protocol Component {
    func operation() -> String
}

class ConcreteComponent: Component {
    func operation() -> String {
        "Concrete Component" //Implicit return
    }
}

protocol Decorator: Component {
    var wrappedComponent: Component { get set }
}

class ConcreteDecoratorA: Decorator {
    var wrappedComponent: Component

    init(component: Component) {
        self.wrappedComponent = component
    }

    func operation() -> String {
        return "Concrete Decorator A " + wrappedComponent.operation()
    }
}


class ConcreteDecoratorB: Decorator {
    var wrappedComponent: Component

    init(component: Component) {
        self.wrappedComponent = component
    }

    func operation() -> String {
//Implicit return
        "Concrete Decorator B " + wrappedComponent.operation()
    }
}


let baseComponent = ConcreteComponent()
print(baseComponent.operation()) // "Concrete Component"

let decoratorA = ConcreteDecoratorA(component: baseComponent)
print(decoratorA.operation()) // "Concrete Decorator A Concrete Component"

let decoratorB = ConcreteDecoratorB(component: decoratorA)
print(decoratorB.operation()) // "Concrete Decorator B Concrete Decorator A Concrete Component"

//: [Next](@next)
