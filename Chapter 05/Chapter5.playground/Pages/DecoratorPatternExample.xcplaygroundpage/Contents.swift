//: [Previous](@previous)

import Foundation

protocol Coffee {
    func cost() -> Double
    func description() -> String
}

class SimpleCoffee: Coffee {
    func cost() -> Double {
        1.0
    }

    func description() -> String {
        "Simple Coffee"
    }
}

protocol CoffeeDecorator: Coffee {
    var wrappedCoffee: Coffee { get }
}

class MilkDecorator: CoffeeDecorator {
    var wrappedCoffee: Coffee

    init(_ coffee: Coffee) {
        self.wrappedCoffee = coffee
    }

    func cost() -> Double {
        wrappedCoffee.cost() + 0.5
    }

    func description() -> String {
        wrappedCoffee.description() + " with Milk"
    }
}

class SugarDecorator: CoffeeDecorator {
    var wrappedCoffee: Coffee

    init(_ coffee: Coffee) {
        self.wrappedCoffee = coffee
    }

    func cost() -> Double {
        wrappedCoffee.cost() + 0.2
    }

    func description() -> String {
        wrappedCoffee.description() + " with Sugar"
    }
}


// Create a simple coffee
var coffee: Coffee = SimpleCoffee()

// Add decorators
coffee = MilkDecorator(coffee)
coffee = SugarDecorator(coffee)

// Display the cost and description
print("Cost: $\(coffee.cost())")
print("Description: \(coffee.description())")

//: [Next](@next)
